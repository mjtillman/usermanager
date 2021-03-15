package com.usermanager.demo.services;

import com.usermanager.demo.entities.User;
import com.usermanager.demo.exceptions.UserNotFoundException;
import com.usermanager.demo.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService {

  @Autowired
  private UserRepository userRepository;

  public Iterable<User> getAllUsers() {
    return userRepository.findAll();
  }

  public User getUserByName(String name) {
    return userRepository.findByName(name);
  }

  public User getUserById(Long id) {
    Optional<User> foundUser = userRepository.findById(id);
    if (!foundUser.isPresent()) {
      throw new UserNotFoundException();
    }
    return foundUser.get();
  }

  public void UpdateUser(User userToUpdate) {
    userRepository.save(userToUpdate);
  }
}
