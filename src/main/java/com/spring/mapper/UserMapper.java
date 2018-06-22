package com.spring.mapper;

import com.spring.dto.User;

public interface UserMapper {

  User findById(int id);

  User findByLoginId(String loginId);

  void insert(User user);

  void update(User user);

  void delete(int id);

}
