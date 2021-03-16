package com.usermanager.demo.controllers;

import com.usermanager.demo.entities.User;
import com.usermanager.demo.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class MainController {

  @Autowired
  private UserService userService;

  @GetMapping(value="/")
  public String showIndex(ModelMap model,
                          @RequestParam(value="message", required=false,
                          defaultValue="Hello, World!") String message) {
    Iterable<String> userIds = userService.getAllUserIds();
    model.addAttribute("message", message);
    model.addAttribute("userIds", userIds);
    return "index";
  }
}
