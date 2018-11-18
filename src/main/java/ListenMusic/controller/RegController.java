package ListenMusic.controller;

import ListenMusic.dao.UserDao;
import ListenMusic.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;


@Controller
@RequestMapping(value = "/signup")
public class RegController {
    UserDao userDao = new UserDao();

    @RequestMapping(value = "/create")
    @ResponseBody
    public Object signUp(@RequestParam("name") String name, @RequestParam("email") String email, @RequestParam("password") String password) {
        User user = new User();
        user.setUsername(name);
        user.setEmail(email);
        user.setPassword(password);
        java.util.Date utilDate = new java.util.Date();
        java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
        user.setCreateDate(sqlDate);
        Map<String, String> map = new HashMap<>();
        if (userDao.createUser(user)) {
            map.put("stauts", "success");
        }
        else {
            map.put("stauts", "failure");
        }
        return map;

    }
}