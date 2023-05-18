package dev.robvega.studentslist.controller;

import dev.robvega.studentslist.service.ApiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class MainController {

    @Autowired
    private ApiService apiService;

    @GetMapping("/")
    public String index() {
        return "index.jsp";
    }

    @GetMapping("/students/new")
    public String newStudent() {
        return "students.jsp";
    }

    @GetMapping("/contact/new")
    public String newContact(Model model) {
        model.addAttribute(
                "studentsList",
                apiService.findByContactInfoIsNull()
        );
        return "contactInfo.jsp";
    }

    @GetMapping("/students")
    public String showDetails(Model model) {
        model.addAttribute(
                "studentsList",
                apiService.findByContactInfoNotNull()
        );
        return "details.jsp";
    }
}
