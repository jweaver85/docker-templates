package com.weaver.core.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("hello-world")
public class HelloWorldController {

    @GetMapping
    @ResponseBody
    public String getMessage() {
        return "Hello World (javasvc)";
    }
}
