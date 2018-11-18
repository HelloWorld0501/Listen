package ListenMusic.controller;

import ListenMusic.dao.MusicInfoDao;
import ListenMusic.dao.SongerDao;
import ListenMusic.model.MusicInfo;
import ListenMusic.model.Songer;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping(value = "songer")
public class SongerController {
    @RequestMapping(value = "/queryAllArtist")
    @ResponseBody
    public List<Songer> getList() {
        SongerDao songerDao = new SongerDao();
        return songerDao.query();
    }

    @RequestMapping(value = "/queryByArtist")
    @ResponseBody
    public List<MusicInfo> queryByArtist(@RequestParam("name")String name) {
        MusicInfoDao musicInfoDao = new MusicInfoDao();
        return musicInfoDao.queryByArtists(name);
    }
    @RequestMapping(value = "/querySomeOneArtist")
    @ResponseBody
    public List<Songer> getSomeOneSonger(@RequestParam("name")String name){
        SongerDao songerDao = new SongerDao();
        return songerDao.querySomeOneSonger(name);
    }
}