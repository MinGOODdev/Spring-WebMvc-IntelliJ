package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

  @RequestMapping("/hello")
  public String hello(Model model) {
    model.addAttribute("data1", "hello, world!");
    return "hello";
  }

}
