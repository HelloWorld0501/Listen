package ListenMusic.controller;

import ListenMusic.dao.UserCollectDao;
import ListenMusic.model.UserCollection;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping(value = "collection")
public class CollectionController {
    @RequestMapping(value = "/query")
    @ResponseBody
    public List<UserCollection> query(@RequestParam("email") String mail) {
        UserCollectDao userCollectDao = new UserCollectDao();
        return userCollectDao.getCols(mail);
    }

    @RequestMapping(value = "/delete")
    @ResponseBody
    public Object delete(@RequestParam("collectid") long id) {
        Map<String, String> map = new HashMap<>();
        UserCollectDao userCollectDao = new UserCollectDao();
        if (userCollectDao.deleteById(id))
            map.put("stauts", "success");
        else
            map.put("stauts", "failure");
        return map;
    }
}