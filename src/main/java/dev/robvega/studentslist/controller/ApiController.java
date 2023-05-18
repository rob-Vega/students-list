package dev.robvega.studentslist.controller;

import dev.robvega.studentslist.model.ContactInfo;
import dev.robvega.studentslist.model.Student;
import dev.robvega.studentslist.service.ApiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ApiController {

    @Autowired
    private ApiService apiService;

    @GetMapping("/students/create")
    public String createNewStudent(
            @RequestParam("firstName") String firstName,
            @RequestParam("lastName") String lastName,
            @RequestParam("age") Integer age
    ) {
        if (firstName.isBlank()) {
            return "error";
        }
        Student student = apiService.createStudent(firstName.trim(), lastName, age);
        return "Success";
    }

    @GetMapping("/contact/create")
    public ContactInfo createNewContactInfo(
            @RequestParam("student") Long studentId,
            @RequestParam("address") String address,
            @RequestParam("city") String city,
            @RequestParam("state") String state
    ) {
        System.out.println(studentId + " " + address + " " + city + " " + state);
        ContactInfo contactInfo = apiService.createContactInfo(studentId, address, city, state);
        return contactInfo;
    }
}
