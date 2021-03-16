package com.usermanager.demo.controllers;

import com.usermanager.demo.entities.User;
import com.usermanager.demo.exceptions.UserNotFoundException;
import com.usermanager.demo.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {

  @Autowired
  private UserService userService;

  @GetMapping("/idSearch")
  public String searchError(ModelMap model) {
    String message = "No user ID provided.<br />Please try again.";
    model.addAttribute("message", message);
    return "error";
  }

  @PostMapping("/idSearch")
  public String showUserDetails(ModelMap model,
                                @RequestParam (value = "userId") String userId) {

    User queryUser = userService.getUserById(Long.parseLong(userId));
    if (queryUser == null) {
      throw new UserNotFoundException(userId);
    }

    model.addAttribute("user", queryUser);
    return "user";
  }

  @PostMapping("/update")
  public String updateUser(ModelMap model,
                           @RequestParam(value="username") String username,
                           @RequestParam(value="email") String email,
                           @RequestParam(value="password") String password) {

    model.addAttribute("username", username);
    model.addAttribute("email", email);
    model.addAttribute("password", password);
    return "confirm";
  }

  @PostMapping("/confirmUpdate")
  public String confirmUpdate(ModelMap model) {
    return "receipt";
  }
}
