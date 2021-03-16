package com.usermanager.demo.controllers;

import com.usermanager.demo.exceptions.UserNotFoundException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class UserNotFoundController {

  @ExceptionHandler(value = UserNotFoundException.class)
  public ModelAndView searchError(UserNotFoundException ex) {

    String searchId = ex.getUserId();
    String message = "<strong>Invalid user ID:</strong> " + searchId + ".</br> Please try again.";

    ModelAndView mav = new ModelAndView();
    mav.addObject("message", message);
    mav.setViewName("error");
    return mav;
  }
}
