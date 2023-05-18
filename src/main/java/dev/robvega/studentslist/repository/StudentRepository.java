package dev.robvega.studentslist.repository;

import dev.robvega.studentslist.model.Student;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface StudentRepository extends CrudRepository<Student, Long> {
    List<Student> findAll();
    List<Student> findByContactInfoIsNull();
    List<Student> findByContactInfoNotNull();
}