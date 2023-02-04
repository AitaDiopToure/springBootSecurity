package com.isi.SpringBootSecurity.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Sprincontro {
    @GetMapping("/")
    String return1(){
        return "Hello World";
    }
}
