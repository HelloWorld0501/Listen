// var items = document.querySelectorAll('.item');
// let iteams = [...items].splice(0, 12);
var musicJson = null;


//立即播放的a
var playNow = $(".playNow");
//添加到播放列表的的a
var addplayList = $(".addPlayList");
//添加到收藏的啊
var addColList = $(".pull-right.addColList");
//封面的img
var imgCover = $(".r.r-2x.img-full.music_cover");
//歌曲名的span
var musicName = $(".text-ellipsis.song");
//歌手名的span
var songerName = $(".text-ellipsis.text-xs.text-muted.songer");
//新歌填充
var NewMusicPlayNow = $(".NewMusicPlayNow");
var NewMusicPlayName = $(".text-ellipsis.NewMusicName");
var NewMusicAtrist = $(".text-ellipsis.text-xs.text-muted.NewMusicArtist");
var NewMusicCover = $(".r.r-2x.img-full.NewMusicCover");

//改变口味儿
var changeTaste = $(".list-group-item.clearfix.ChangeTaste");
var changeTasteImg = $(".changeTasteCover");
var changeTasteMusicName = $(".ChangeTasteMusicName");
var ChangeTasteMusicSonger = $(".text-muted.clear.text-ellipsis.ChangeTasteMusicSonger");


var musicinfoBymusicNameJson = null;

//取得歌曲信息函数
getInfo(null);
//填充
DataToPage();

function getInfo(MusicName) {
    if (MusicName === null) {
        $.ajax({
            type: "get",
            url: 'index/query',
            async: false,
            cache: false,//页面缓存
            success: function (data) {
                musicJson = data
            }
        });
        return musicJson;
    } else {
        $.ajax({
            type: "get",
            url: 'index/queryByMusicName',
            data: {
                musicname: MusicName
            },
            async: false,
            cache: false,//页面缓存
            success: function (data) {
                musicinfoBymusicNameJson = data
            }
        });
        return musicinfoBymusicNameJson;
    }

}

//数据填充函数
//第0个a是播放,第1个a是添加到收藏,第二个a是添加到播放列表
function DataToPage() {
    //填充数据(发现)
    for (var i = 0; i < 12; i++) {
        //填充发现
        imgCover[i].src = musicJson[i].musicCover;
        musicName[i].innerHTML = musicJson[i].musicName;
        songerName[i].innerHTML = musicJson[i].musicArtist;
        //立即播放
        playNow[i].dataset.url = musicJson[i].musicUrl;
        playNow[i].dataset.name = musicJson[i].musicName;
        playNow[i].dataset.songer = musicJson[i].musicArtist;
        playNow[i].dataset.lrc = musicJson[i].musicLrc;
        playNow[i].dataset.cover = musicJson[i].musicCover;
        //添加到收藏
        addColList[i].dataset.url = musicJson[i].musicUrl;
        addColList[i].dataset.id = musicJson[i].musicId;
        addColList[i].dataset.name = musicJson[i].musicName;
        addColList[i].dataset.songer = musicJson[i].musicArtist;
        addColList[i].dataset.cover = musicJson[i].musicCover;
        addColList[i].dataset.lrc = musicJson[i].musicLrc;
        //添加到播放列表
        addplayList[i].dataset.url = musicJson[i].musicUrl;
        addplayList[i].dataset.name = musicJson[i].musicName;
        addplayList[i].dataset.songer = musicJson[i].musicArtist;
        addplayList[i].dataset.lrc = musicJson[i].musicLrc;
        addplayList[i].dataset.cover = musicJson[i].musicCover;
    }


    //填充数据(新歌)
    for (var i = 0; i < 8; i++) {
        NewMusicCover[i].src = musicJson[i + 38].musicCover;
        NewMusicAtrist[i].innerHTML = musicJson[i + 38].musicArtist;
        NewMusicPlayName[i].innerHTML = musicJson[i + 38].musicName;
        NewMusicPlayNow[i].dataset.songer = musicJson[i + 38].musicArtist;
        NewMusicPlayNow[i].dataset.name = musicJson[i + 38].musicName;
        NewMusicPlayNow[i].dataset.url = musicJson[i + 38].musicUrl;
        NewMusicPlayNow[i].dataset.cover = musicJson[i + 38].musicCover;
        NewMusicPlayNow[i].dataset.lrc = musicJson[i + 38].musicLrc;
    }
    //填充数据(换口味)
    for (var i = 0; i < 8; i++) {
        changeTaste[i].dataset.url = musicJson[i + 31].musicUrl;
        changeTaste[i].dataset.songer = musicJson[i + 31].musicArtist;
        changeTaste[i].dataset.name = musicJson[i + 31].musicName;
        changeTaste[i].dataset.cover = musicJson[i + 31].musicCover;
        changeTaste[i].dataset.lrc = musicJson[i + 31].musicLrc;
        changeTasteImg[i].src = musicJson[i + 31].musicCover;
        changeTasteMusicName[i].innerHTML = musicJson[i + 31].musicName;
        ChangeTasteMusicSonger[i].innerHTML = musicJson[i + 31].musicArtist;
    }
}

function PlaySong(e) {
    addList(e);
    ap.list.switch(ap.list.audios.length - 1);
    ap.theme('#ebd0c2', ap.list.audios.length - 1);
    ap.play();
}

function addList(e) {
    ap.list.add([{
        name: e.dataset.name,
        artist: e.dataset.songer,
        url: e.dataset.url,
        cover: e.dataset.cover,
        lrc: e.dataset.lrc,
        theme: '#ebd0c2'
    }]);
}



function queryByMusicName() {
    getInfo(document.getElementById('text_MusicName').value);
    if (musicinfoBymusicNameJson.length == 0 || musicinfoBymusicNameJson === null) {
        alert("未收录歌曲名为\"" + document.getElementById('text_MusicName').value + "\"的歌曲");
        document.getElementById('text_MusicName').value = null;
        musicinfoBymusicNameJson = null;
    } else {
        //填充数据
        var content = `<div class = "col-xs-6 col-sm-4 col-md-3 col-lg-2" >
										<div class = "item" >
											<div class = "pos-rlt" >
												<div class = "item-overlay opacity r r-2x bg-black" >
													<div class = "center text-center m-t-n" >
														<a class = "playNow" href = "javascript:void(0)"
														   onclick = "PlaySong(this)"
														   data-url = ""
														   data-name = ""
														   data-songer = ""
														   data-lrc = ""
														   data-cover = "" > <i class = "icon-control-play i-2x" > </i >
														</a >
													</div >
													<div class = "bottom padder m-b-sm" >
														<!--添加到收藏-->
														<a class = "pull-right addColList" href = "javascript:void(0)" data-url = "" data-id = ""
														   data-name = "" data-songer = "" onclick = "addCol(this)" >
															<i class = "fa fa-heart-o" > </i > </a >
														<a class = "addPlayList" href = "javascript:void(0)"
														   onclick = "addList(this)"
														   data-url
																   = ""
														   data-lrc = ""
														   data-name = "" data-songer = ""
														   data-cover = "" >
															<!--加到播放列表-->
															<i class = "fa fa-plus-circle" > </i > </a >
													</div >
												</div >
												<img alt = "" class = "r r-2x img-full music_cover"
												     src = "images/p3.jpg" />
											</div >
											<div class = "padder-v" >
												<span class = "text-ellipsis song" href = "#" >
													Morbi id neque quam liquam sollicitudin
												</span >
												<span class = "text-ellipsis text-xs text-muted songer" href = "#" >
													Allen JH
												</span >
											</div >
										</div >
									</div >`
        $($(".row.row-sm")[0]).empty();
        $($(".row.row-sm")[0]).html(content);
        var playNow = $(".playNow");
        var addplayList = $(".addPlayList");
        var addColList = $(".pull-right.addColList");
        var imgCover = $(".r.r-2x.img-full.music_cover");
        //歌曲名的span
        var musicName = $(".text-ellipsis.song");
        //歌手名的span
        var songerName = $(".text-ellipsis.text-xs.text-muted.songer");
        imgCover[0].src = musicinfoBymusicNameJson[0].musicCover;
        playNow[0].dataset.url = musicinfoBymusicNameJson[0].musicUrl;
        playNow[0].dataset.name = musicinfoBymusicNameJson[0].musicName;
        playNow[0].dataset.songer = musicinfoBymusicNameJson[0].musicArtist;
        playNow[0].dataset.lrc = musicinfoBymusicNameJson[0].musicLrc;
        playNow[0].dataset.cover = musicinfoBymusicNameJson[0].musicCover;

        addplayList[0].dataset.url = playNow[0].dataset.url;
        addplayList[0].dataset.cover = musicinfoBymusicNameJson[0].musicCover;
        addplayList[0].dataset.name = playNow[0].dataset.name;
        addplayList[0].dataset.songer = playNow[0].dataset.songer;
        addplayList[0].dataset.lrc = playNow[0].dataset.lrc;

        musicName[0].innerHTML = playNow[0].dataset.name;
        songerName[0].innerHTML = playNow[0].dataset.songer;

        addColList[0].dataset.url = musicinfoBymusicNameJson[0].musicUrl;
        addColList[0].dataset.name = musicinfoBymusicNameJson[0].musicName;
        addColList[0].dataset.songer = musicinfoBymusicNameJson[0].musicArtist;
        addColList[0].dataset.lrc = musicinfoBymusicNameJson[0].musicLrc;
        addColList[0].dataset.cover = musicinfoBymusicNameJson[0].musicCover;
        addColList[0].dataset.id = musicinfoBymusicNameJson[0].musicId;
    }
}

function addCol(e) {
    $.ajax({
        type: "get",
        url: 'index/usercollection',
        data: {
            email:useremail,
            musicid:e.dataset.id,
            musicurl:e.dataset.url,
            musicname:e.dataset.name,
            musicartist:e.dataset.songer,
            musiccover:e.dataset.cover,
            musiclrc:e.dataset.lrc,
        },
        async: false,
        cache: false,//页面缓存
        success: function (data) {
            if (data.stauts === "success"){
                alert("收藏成功!")
            } else {
                alert("请不要重复添加");
            }
        },
        error:function () {
            alert("请不要重复添加!");
        }
    });
}


function goToOther(e) {
    if (ap != null){
        ap.destroy();
    }
    window.location.href = e;
}
