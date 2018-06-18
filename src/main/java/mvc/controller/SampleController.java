package mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SampleController {

  @RequestMapping("/")
  public String index() {
    return "index";
  }

  @RequestMapping("hello")
  public String hello(Model model) {
    model.addAttribute("data", "hello, world!");
    return "hello";
  }

}
