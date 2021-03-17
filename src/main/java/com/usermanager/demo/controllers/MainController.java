package com.usermanager.demo.controllers;

import com.google.gson.Gson;
import com.usermanager.demo.services.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class MainController {

  Logger log = LoggerFactory.getLogger(MainController.class);

  @Autowired
  private UserService userService;

  @GetMapping(value="/")
  public String showIndex(ModelMap model,
                          @RequestParam(value="message", required=false,
                          defaultValue="Hello, World!") String message) {

    List<String> userIds = userService.getAllUserIds();
    Gson gson = new Gson();

    model.addAttribute("message", message);
    model.addAttribute("userIds", gson.toJson(userIds));
    return "index";
  }
}
