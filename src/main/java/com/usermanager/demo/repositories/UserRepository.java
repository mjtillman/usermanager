package com.usermanager.demo.repositories;

import com.usermanager.demo.entities.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Long> {

  User findByName(String name);

}
