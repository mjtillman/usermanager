package com.usermanager.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {

  @GetMapping(value="/")
  public String showIndex(ModelMap model,
                          @RequestParam(value="message", required=false,
                          defaultValue="Hello, World!") String message) {
    model.addAttribute("message", message);
    return "index";
  }
}
