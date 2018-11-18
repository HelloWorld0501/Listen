package ListenMusic.controller;

import ListenMusic.dao.UserDao;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/signin")
public class LoginControl {
    UserDao userDao = new UserDao();

    @RequestMapping(value = "/login")
    @ResponseBody
    public Object signin(@RequestParam("email") String email, @RequestParam("password") String password, HttpServletResponse httpServletResponse) {
        String username = null;
        username = userDao.userLogin(email,password);
        Map<String, String> map = new HashMap<>();
        if (username != null) {
            map.put("stauts", "success");
            Cookie userName = new Cookie("userName",username);
            Cookie userEmail = new Cookie("userEmail",email);
            userName.setMaxAge(26*60*60);
            userEmail.setMaxAge(26*60*60);
            userEmail.setPath("/");
            userName.setPath("/");
            httpServletResponse.addCookie(userName);
            httpServletResponse.addCookie(userEmail);

        }
        else {
            map.put("stauts", "failure");
        }
        return map;
    }
}