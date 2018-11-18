var songerTable = $("#SongerTable");
var songerJson = null;
var artistName = $("#ArtistName");
var musicCoverJson = null;
//清除
clearItem();
//获取
getArtistData(null);
//填充
changeItem();
//改标题
changeArtistName();


function clearItem() {
    songerTable.empty();
}

function getArtistData(songerName) {
    if (songerName === null) {
        $.ajax({
            type:"get",
            url:"songer/queryAllArtist",
            async:false,
            cache:false,
            success:function (data) {
                songerJson = data;
            }
        });
        return songerJson;
    }else {
        $.ajax({
            type:"get",
            url:"songer/querySomeOneArtist",
            data:{
                name:songerName
            },
            async:false,
            cache:false,
            success:function (data) {
                if (data.length === 0){
                    alert("没有这位歌手!");
                } else {
                    songerJson = data;
                }
            }
        });
        return songerJson;
    }

}

function changeItem() {
    for (var i = 0; i < songerJson.length; i++){
        var a = document.createElement('a');
        a.innerHTML = songerJson[i].songerName;
        a.href = "javascript:void(0)";
        a.addEventListener("click",changeMusics,false);
        a.dataset.name = songerJson[i].songerName;
        if (i == 0){
            a.setAttribute("class","list-group-item active")
        } else {
            a.setAttribute("class","list-group-item")
        }
        songerTable.append(a);
    }
    autochangeMusics(songerTable.children(":first")[0].innerHTML);
}

function autochangeMusics(e) {
    artistName.text(e);
    getMusicCovers(e);
    changeMusciCovers();
}

function changeMusics(ev) {
    var name = ev.target.dataset.name;
    artistName.text(name);
    $("#SongerTable > *").removeClass("active");
    $(ev.target).addClass("active");
    getMusicCovers(name);
    changeMusciCovers();
}

function changeArtistName() {
    artistName.text($("#SongerTable").children(":first").text());
}


//改变封面页
function changeMusciCovers() {
    var content = '';
    for (var i = 0; i < musicCoverJson.length; i++) {

        content += `
            <div class = "col-xs-6 col-sm-4 col-md-3 col-lg-2" >
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
                                   data-cover = "" >
                                    <i class = "icon-control-play i-2x" > </i > </a >
                            </div >
                        </div >
                        <img src = "images/m1.jpg" alt = "" class = "r r-2x img-full imgCover" >
                    </div >
                    <div class = "padder-v" >
                        <span class = "text-ellipsis song" >
                            Morbi id neque quam liquam sollicitudin
                        </span >
                        <span class = "text-ellipsis text-xs text-muted songer" >
                            Allen JH
                        </span >
                    </div >
                </div >
            </div >
        `
    }
    $('#musicCovers').html(content);
    var as = $(".playNow");
    var imgCover = $(".r.r-2x.img-full.imgCover");
    var MusicNames = $(".text-ellipsis.song");
    var AtristNames = $(".text-ellipsis.text-xs.text-muted.songer");
    for (var i = 0; i < musicCoverJson.length; i++) {
        as[i].dataset.url = musicCoverJson[i].musicUrl;
        as[i].dataset.name = musicCoverJson[i].musicName;
        as[i].dataset.songer = musicCoverJson[i].musicArtist;
        as[i].dataset.cover = musicCoverJson[i].musicCover;
        as[i].dataset.lrc = musicCoverJson[i].musicLrc;
        $(imgCover[i]).attr('src',musicCoverJson[i].musicCover);
        $(MusicNames[i]).html(musicCoverJson[i].musicName);
        $(AtristNames[i]).html(musicCoverJson[i].musicArtist);
    }
}

function getMusicCovers(e) {
    $.ajax({
        type:"get",
        url:"songer/queryByArtist",
        data:{name:e},
        async:false,
        success:function (data) {
            musicCoverJson = data;
        }
    });
    return musicCoverJson;
}

function PlaySong(ev) {
    addList(ev);
    ap.list.switch(ap.list.audios.length - 1);
    ap.theme('#ebd0c2',ap.list.audios.length - 1);
    ap.play();
}
function addList(e) {
    ap.list.add([{
        name:e.dataset.name,
        artist:e.dataset.songer,
        url:e.dataset.url,
        cover:e.dataset.cover,
        lrc:e.dataset.lrc,
        theme: '#ebd0c2'
    }]);
}

function searchSonger() {
    var text_songer = document.getElementById('text_songer').value;
    getArtistData(text_songer);
    clearItem();
    changeItem();
    changeArtistName();
}

function goToOther(e) {
    if (ap != null){
        ap.destroy();
    }
    window.location.href = e;
}