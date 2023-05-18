package dev.robvega.studentslist.service;

import dev.robvega.studentslist.model.ContactInfo;
import dev.robvega.studentslist.model.Student;
import dev.robvega.studentslist.repository.ContactInfoRepository;
import dev.robvega.studentslist.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ApiService {
    @Autowired
    private StudentRepository studentRepository;

    @Autowired
    private ContactInfoRepository contactInfoRepository;

    public List<Student> findByContactInfoIsNull() {
        return studentRepository.findByContactInfoIsNull();
    }

    public List<Student> findByContactInfoNotNull() {
        return studentRepository.findByContactInfoNotNull();
    }

    public List<ContactInfo> findAllContactInfo() {
        return contactInfoRepository.findAll();
    }

    public Student createStudent(String firstName, String lastName, int age) {
        Student student = new Student(firstName, lastName, age);
        studentRepository.save(student);
        return student;
    }

    public ContactInfo createContactInfo(Long studentId, String address, String city, String state) {
        Optional<Student> optionalStudent = studentRepository.findById(studentId);
        if (optionalStudent.isPresent()) {
            ContactInfo contactInfo = new ContactInfo(address, city, state, optionalStudent.get());
            contactInfoRepository.save(contactInfo);
            return contactInfo;
        }
        return null;
    }
}
