package com.spring.mapper;

import com.spring.dto.User;

import java.util.List;

public interface UserMapper {

  List<User> findAll();

  User findById(int id);

  User findByLoginId(String loginId);

  void insert(User user);

  void update(User user);

  void delete(int id);

}
