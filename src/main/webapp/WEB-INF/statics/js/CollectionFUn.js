// 11
var collecrionJson = null;


var contentCol = `<li class = "list-group-item" >
						<div class = "pull-right m-l" >
<a href = "javascript:void(0)" 
onclick="deleteCol(this)" class="deleteSong"><i class = "icon-close i-2x" ></i ></a >
<a href = "javascript:void(0)" class="addPlayList" onclick="addList(this)"><i class = 
"icon-plus i-2x"
></i ></a >
</div >
<a href = "javascript:void(0)" onclick="playNow(this)" class = 
"jp-play-me m-r-sm pull-left playNow" >
<i class = "icon-control-play text" ></i > </a >
<div class = "clear text-ellipsis" >
<span class = "TexMusicName" >E.T.M</span > <span class =
"text-muted TextSongerName" >	--
04:35</span >
</div >
</li >`

clearList();
getCollection();
changeMyCols();
changeTing();

function getCollection() {
    $.ajax({
        type:"get",
        url:"collection/query",
        data:{
            email:getCookie("userEmail"),
        },
        async:false,
        cache:false,
        success:function (data) {
            console.log(data);
            collecrionJson = data;
        }
    });
    return collecrionJson;
}

function clearList() {
    $("#myCols").empty();
}

function changeMyCols() {
    var list = ''
    for (var i = 0; i < collecrionJson.length; i++) {
        list += contentCol;
    }
    $("#myCols").html(list);
    $("#counts").html(collecrionJson.length);
    var deleteSong = $(".deleteSong");
    var addList = $(".addPlayList");
    var playMusic = $(".jp-play-me.m-r-sm.pull-left.playNow");
    var MusicNameText = $(".TexMusicName");
    var SongerText = $(".text-muted.TextSongerName");
    for (var i = 0; i < collecrionJson.length; i++) {

        MusicNameText[i].innerHTML = collecrionJson[i].musicName;
        SongerText[i].innerHTML = "&nbsp&nbsp&nbsp by &nbsp&nbsp&nbsp" + collecrionJson[i].musicArtist;

        addList[i].dataset.id = collecrionJson[i].musicId;
        addList[i].dataset.songer = collecrionJson[i].musicArtist;
        addList [i].dataset.cover = collecrionJson[i].musicCover;
        addList[i].dataset.lrc = collecrionJson[i].musicLrc;
        addList [i].dataset.name = collecrionJson[i].musicName;
        addList [i].dataset.url = collecrionJson[i].musicUrl;
        addList[i].dataset.email = collecrionJson[i].userEmail;

        playMusic[i].dataset.id = collecrionJson[i].musicId;
        playMusic[i].dataset.songer = collecrionJson[i].musicArtist;
        playMusic[i].dataset.cover = collecrionJson[i].musicCover;
        playMusic[i].dataset.lrc = collecrionJson[i].musicUrl;
        playMusic[i].dataset.name = collecrionJson[i].musicName;
        playMusic[i].dataset.url = collecrionJson[i].musicUrl;
        playMusic[i].dataset.email = collecrionJson[i].userEmail;
        deleteSong[i].dataset.id = collecrionJson[i].id;
    }
}

function playNow(e) {
    addList(e);
    ap.list.switch(ap.list.audios.length - 1);
    ap.theme('#ebd0c2', ap.list.audios.length - 1);
    ap.play();
}

function addList(e) {
    console.log(e);
    ap.list.add([{
        name: e.dataset.name,
        artist: e.dataset.songer,
        url: e.dataset.url,
        cover: e.dataset.cover,
        lrc: e.dataset.lrc,
        theme: '#ebd0c2'
    }]);
}

function deleteCol(e) {
    $.ajax({
        type:"get",
        url:"collection/delete",
        data:{
            collectid:e.dataset.id
        },
        async:false,
        cache:false,
        success:function (data) {
            if (data.length != 0){
                alert("删除成功!");
            } else {
                alert("删除失败!");
            }
        }
    });
    clearList();
    getCollection();
    changeMyCols();
}

function changeTing() {
    var musicJson = null;
    var TingImg = $(".pull-left.thumb-sm.m-r.imgCovers");
    var aTing = $(".jp-play-me.pull-right.m-t-sm.m-l.text-md.pl");
    var TingMusicName = $(".block.text-ellipsis.TingMusicName");
    var TingSongName = $(".text-muted.TingSongName");
    $.ajax({
        type: "get",
        url: 'index/query',
        async: false,
        cache: false,//页面缓存
        success: function (data) {
            musicJson = data;
        }
    });
    for (var i = 0; i < 12; i++) {
        TingImg[i].src = musicJson[i+21].musicCover;
        TingMusicName[i].innerHTML = musicJson[i+21].musicName;
        TingSongName[i].innerHTML = "by&nbsp" + musicJson[i+21].musicArtist;

        aTing[i].dataset.name = musicJson[i+21].musicName;
        aTing[i].dataset.songer = musicJson[i+21].musicArtist;
        aTing[i].dataset.url = musicJson[i+21].musicUrl;
        aTing[i].dataset.cover = musicJson[i+21].musicCover;
        aTing[i].dataset.lrc = musicJson[i+21].musicLrc;
    }
}

function goToOther(e) {
    if (ap != null){
        ap.destroy();
    }
    window.location.href = e;
}