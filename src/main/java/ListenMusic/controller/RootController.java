package ListenMusic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/")
public class RootController {

    @RequestMapping(value = {"/","/index"})
    public String index() {
        return "index";
    }

    @RequestMapping(value = "/collection")
    public String collection() {
        return "collection";
    }

    @RequestMapping(value = {"/songer"})
    public String songer() {
        return "songer";
    }

    @RequestMapping(value = "/signin")
    public String signin() {
        return "signin";
    }

    @RequestMapping(value = "/signup")
    public String signup() {
        return "signup";
    }
    @RequestMapping(value = "/admin")
    public String admin(){
        return "admin";
    }
}