package ListenMusic.controller;

import ListenMusic.dao.MusicInfoDao;
import ListenMusic.dao.UserCollectDao;
import ListenMusic.model.MusicInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("index")
public class IndexController {



//    从数据库查询
    @RequestMapping(value = "/query")
    @ResponseBody
    public List<MusicInfo> getList(){
        MusicInfoDao musicInfoDao = new MusicInfoDao();
        return musicInfoDao.query();
    }


    @RequestMapping(value = "/queryByMusicName")
    @ResponseBody
    public List<MusicInfo> getListByMusicName(@RequestParam("musicname")String musicname){
        MusicInfoDao musicInfoDao = new MusicInfoDao();
        return musicInfoDao.queryByMusic(musicname);
    }

    @RequestMapping(value = "/usercollection")
    @ResponseBody
    public Object userCollection(@RequestParam("email")String email,
                                 @RequestParam("musicid")String musicid,
                                 @RequestParam("musicurl")String musicurl,
                                 @RequestParam("musicname")String musicname,
                                 @RequestParam("musicartist")String musicartist,
                                 @RequestParam("musiccover")String musiccover,
                                 @RequestParam("musiclrc")String musiclrc){
        UserCollectDao userCollectDao = new UserCollectDao();
        Map<String,String> map = new HashMap<>();
        if (userCollectDao.addCol(email,musicid,musicurl,musicname,musicartist,musiccover,musiclrc)){
            map.put("stauts","success");
        }else{
            map.put("stauts","failure");
        }
        return map;
    }
}