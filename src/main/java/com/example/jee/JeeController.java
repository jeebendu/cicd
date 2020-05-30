package com.example.jee;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/Jee")
public class JeeController {

    @GetMapping("/") 
    public String index(){
        return "Jee Controller is running";
    }
}