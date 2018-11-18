package ListenMusic.controller;

import ListenMusic.dao.MusicInfoDao;
import ListenMusic.dao.SongerDao;
import ListenMusic.model.MusicInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "admin")
public class AdminController {
    @RequestMapping(value = "/addSonger")
    @ResponseBody
    public Object addSonger(@RequestParam("songerName")String name){
        SongerDao songerDao = new SongerDao();
        Map<String,String> map = new HashMap<>();
        if (songerDao.AddSonger(name))
            map.put("stauts","success");
        else
            map.put("stauts","failure");

        return map;
    }

    @RequestMapping(value = "/addMusic")
    @ResponseBody
    public Object addMusic(@RequestParam("MusicName")String MusicName,
                           @RequestParam("SongerName")String SongerName,
                           @RequestParam("MusicUrl")String MusicUrl,
                           @RequestParam("MusicLrc")String MusicLrc,
                           @RequestParam("MusicCover")String MusicCover){
        MusicInfo musicInfo = new MusicInfo();
        musicInfo.setMusicArtist(SongerName);
        musicInfo.setMusicCover(MusicCover);
        musicInfo.setMusicLrc(MusicLrc);
        musicInfo.setMusicName(MusicName);
        musicInfo.setMusicUrl(MusicUrl);
        MusicInfoDao musicInfoDao = new MusicInfoDao();
        Map<String,String> map = new HashMap<>();
        if (musicInfoDao.addMusic(musicInfo))
            map.put("stauts","success");
        else
            map.put("stauts","failure");
        return map;
    }

    @RequestMapping(value = "/adminLogin")
    @ResponseBody
    public Object isAdmin(@RequestParam("passwd")String passwd){
        Map<String,String> map = new HashMap<>();
        if (passwd.equals("zhangke"))
            map.put("stauts","success");
        else
            map.put("stauts","failure");
        return map;
    }

    @RequestMapping(value = "/deleteMusic")
    @ResponseBody
    public Object deleteSong(@RequestParam("musicName") String deleteName){
        Map<String,String> map = new HashMap<>();
        MusicInfoDao musicInfoDao = new MusicInfoDao();
        if (musicInfoDao.deleteMusic(deleteName))
            map.put("stauts","success");
        else
            map.put("stauts","failure");
        return map;
    }

    @RequestMapping(value = "/deleteSonger")
    @ResponseBody
    public Object deleteSonger(@RequestParam("SongerName")String songerName){
        Map<String,String> map = new HashMap<>();
        SongerDao songerDao = new SongerDao();
        if (songerDao.deleteSongerByName(songerName))
            map.put("stauts","success");
        else
            map.put("stauts","failure");
        return map;
    }
}