package mvc.bbs1.service;

import mvc.bbs1.dto.User;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

/*
 * 스프링에 의해 객체가 자동으로 생성되기 위해서는,
 * @Servie 어노테이션이 붙어있어야 합니다.
 */
@Service
public class UserService {

  public String validate(User user) {
    String s = user.getLoginId();
    if (StringUtils.isBlank(s)) {
      return "로그인 ID를 입력하세요.";
    }

    s = user.getName();
    if (StringUtils.isBlank(s)) {
      return "이름을 입력하세요";
    }

    s = user.getEmail();
    if (StringUtils.isBlank(s)) {
      return "이메일을 입력하세요.";
    }

    s = user.getUserType();
    if (StringUtils.isBlank(s)) {
      return "사용자 유형을 선택하세요.";
    }

    return null;
  }

}
