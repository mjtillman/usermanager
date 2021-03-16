package com.usermanager.demo.exceptions;

public class UserNotFoundException extends RuntimeException {

  private final String userId;

  public UserNotFoundException(String id) {
    super();
    this.userId = id;
  }

  public String getUserId() {
    return userId;
  }
}
