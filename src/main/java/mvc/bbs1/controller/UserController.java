package mvc.bbs1.controller;

import mvc.bbs1.dto.User;
import mvc.bbs1.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {

  @Autowired
  private UserService userService;

  @RequestMapping(value="/user/edit", method = RequestMethod.GET)
  public String edit(Model model) {
    User user = new User();
    user.setName("조민국");
    model.addAttribute("user", user);
    return "user/edit";
  }

  @RequestMapping(value = "/user/edit", method = RequestMethod.POST)
  public String edit(User user, Model model) {
    String msg = userService.validate(user);
    if (msg == null) {
      model.addAttribute("success", "저장 완료");
    }
    else {
      model.addAttribute("error", msg);
    }
    return "user/edit";
  }

}
