package com.spring.controller;

import com.spring.dto.User;
import com.spring.mapper.DepartmentMapper;
import com.spring.mapper.UserMapper;
import com.spring.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {

  @Autowired
  private UserMapper userMapper;

  @Autowired
  private UserService userService;

  @Autowired
  private DepartmentMapper departmentMapper;

  @RequestMapping("/user/list")
  public String list(Model model) {
    model.addAttribute("list", userMapper.findAll());
    return "user/list";
  }

  @RequestMapping(value = "/user/edit", method = RequestMethod.GET)
  public String edit(@RequestParam("id") int id, Model model) {
    User user = userMapper.findById(id);
    model.addAttribute("user", user);
    model.addAttribute("departments", departmentMapper.findAll());
    return "user/edit";
  }

  @RequestMapping(value = "/user/edit", method = RequestMethod.POST)
  public String edit(User user, Model model) {
    String message = userService.validateBeforeUpdate(user);

    if (message == null) {
      userMapper.update(user);
      model.addAttribute("success", "저장했습니다.");
    }
    else model.addAttribute("error", message);

    model.addAttribute("departments", departmentMapper.findAll());
    return "user/edit";
  }

}
