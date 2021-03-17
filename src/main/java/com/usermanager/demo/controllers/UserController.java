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

import java.util.HashMap;
import java.util.Map;

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
                                @RequestParam(value = "queryId") String queryId) {

    User queryUser = userService.getUserById(Long.parseLong(queryId));
    if (queryUser == null) {
      throw new UserNotFoundException(queryId);
    }

    model.addAttribute("queryId", queryId);
    model.addAllAttributes(generateUserModel(queryUser));
    return "user";
  }

  @PostMapping("/update")
  public String updateUser(ModelMap model,
                           @RequestParam(value="queryId") String queryId,
                           @RequestParam(value = "newUsername", required = false) String newUsername,
                           @RequestParam(value = "newEmail", required = false) String newEmail,
                           @RequestParam(value = "newPassword", required = false) String newPassword) {

    if (newUsername != null) {
      model.addAttribute("newUsername", newUsername);
    }
    if (newEmail != null) {
      model.addAttribute("newEmail", newEmail);
    }
    if (newPassword != null) {
      model.addAttribute("newPassword", newPassword);
    }

    model.addAttribute("queryId", queryId);
    return "confirm";
  }

  @PostMapping("/confirmUpdate")
  public String confirmUpdate(ModelMap model,
        @RequestParam(value="userId") String userId,
        @RequestParam(value="newUsername", required = false) String newUsername,
        @RequestParam(value="newEmail", required = false) String newEmail,
        @RequestParam(value="newPassword", required = false) String newPassword) {

    User updateUser = userService.getUserById(Long.parseLong(userId));

    if (newUsername != null) {
      updateUser.setUsername(newUsername);
    }
    if (newEmail != null) {
      updateUser.setEmail(newEmail);
    }
    if (newPassword != null) {
      updateUser.setPassword(newPassword);
    }

    userService.updateUser(updateUser);

    model.addAllAttributes(generateUserModel(updateUser));
    return "receipt";
  }

  private Map<String, String> generateUserModel(final User user) {
    Map<String, String> map = new HashMap<>();
        map.put("userId", user.getId().toString());
        map.put("username", user.getUsername());
        map.put("email", user.getEmail());
        map.put("password", user.getPassword());
    return map;
  }
}
