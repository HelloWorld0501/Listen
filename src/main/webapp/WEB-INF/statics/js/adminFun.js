var musicJson = null;
var SongerJson = null;

function queryAllMusic() {
    $("#myTable").empty();
    var table = `<table class="table table-hover">
					<thead>
					<tr>
						<th>
							歌曲名
						</th>
						<th>
							歌手名
						</th>
						<th>
							歌曲地址
						</th>
						<th>
							歌曲封面地址
						</th>
						<th>
							歌词地址
						</th>
					</tr>
					</thead>
					<tbody id="tablesTbody"></tbody>
                </table>`
    $("#myTable").html(table);
    var tds = `<tr>
						<td class="musicName">
						</td>
						<td class="musicArtist">
						</td>
						<td class="musicUrl">
						</td>
						<td class="musicCover">
						</td>
						<td class="musicLrc">
						</td>
						<td>
						    <input class="musicId" type="button" value="删除" data-name="" onclick="deleteMusic(this)" />
                        </td>
					</tr>`
    getMusicInfo();
    var tempStr = null;
    for (var i = 0; i < musicJson.length; i++) {
        tempStr += tds;
    }
    $("#tablesTbody").html(tempStr);
    var musicName = $(".musicName");
    var musicArtist = $(".musicArtist");
    var musicId = $(".musicId");
    var musicUrl = $(".musicUrl");
    var musicCover = $(".musicCover");
    var musicLrc = $(".musicLrc");
    for (var i = 0; i < musicJson.length; i++) {
        musicName[i].innerHTML = musicJson[i].musicName;
        musicArtist[i].innerHTML = musicJson[i].musicArtist;
        musicId[i].dataset.name = musicJson[i].musicName;
        musicUrl[i].innerHTML = musicJson[i].musicUrl;
        musicCover[i].innerHTML = musicJson[i].musicCover;
        musicLrc[i].innerHTML = musicJson[i].musicLrc;
    }
}

function getMusicInfo() {
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
}

function queryAllSonger() {
    queryAllArtist();
    $("#myTable").empty();
    var table = `<table class="table table-hover">
					<thead>
					<tr>
						<th>
							歌手id
						</th>
						<th>
							歌手名
						</th>
					</tr>
					</thead>
					<tbody id="tablesTbody"></tbody>
                </table>`
    $("#myTable").html(table);
    var tds = `<tr>
						<td class="SongerId">
						</td>
						<td class="SongerName">
						</td>
						<td>
						<input class="deletesonger" type="button" value="删除" data-name="" onclick="deleteArtist(this)" />
</td>
					</tr>`
    var tempStr = null;
    for (var i = 0; i < songerJson.length; i++) {
        tempStr += tds;
    }
    $("#tablesTbody").html(tempStr);
    var SongerId = $(".SongerId");
    var SongerName = $(".SongerName");
    var deleteSonger = $(".deletesonger");
    for (var i = 0; i < songerJson.length; i++) {
        SongerId[i].innerHTML = songerJson[i].songerId;
        SongerName[i].innerHTML = songerJson[i].songerName;
        deleteSonger[i].dataset.name = songerJson[i].songerName;
    }
}

function queryAllArtist() {
    $.ajax({
        type: "get",
        url: "songer/queryAllArtist",
        async: false,
        cache: false,
        success: function (data) {
            songerJson = data;
        }
    });
    return songerJson;
}

function addSonger() {
    var a = $("#singer").val();
    if (a == "") {
        return false;
    } else {
        console.log(a);
        $.ajax({
            type: "get",
            url: "admin/addSonger",
            data: {
                songerName: a
            },
            async: false,
            cache: false,
            success: function (data) {
                console.log(data);
                if (data.stauts === "success"){
                    alert("添加歌手成功!");
                    $("#singer").val("");
                }
                else
                    alert("添加歌手失败!请不要重复添加");
            }
        });
        return true;
    }
}

function AddMusic() {
    var MusicName = $("#MusicName").val();
    var SongerName = $("#SongerName").val();
    var MusicUrl = $("#MusicUrl").val();
    var MusicLrc = $("#MusicLrc").val();
    var MusicCover = $("#MusicCover").val();

    if (MusicName === "" || SongerName === "" || MusicUrl === "" || MusicLrc === "" || MusicCover === "") {
        return false;
    } else {
        $.ajax({
            type: "get",
            url: "admin/addMusic",
            data: {
                MusicName: MusicName,
                SongerName: SongerName,
                MusicUrl: MusicUrl,
                MusicLrc: MusicLrc,
                MusicCover: MusicCover
            },
            async: false,
            cache: false,
            success: function (data) {
                console.log(data);
                if (data.stauts === "success") {
                    alert("添加歌曲成功!");
                    $("#MusicName").val("");
                    $("#SongerName").val("");
                    $("#MusicUrl").val("");
                    $("#MusicLrc").val("");
                    $("#MusicCover").val("");
                }
                else
                    alert("添加歌曲失败!请不要重复添加或者先添加歌手");
            }
        });
        return true;
    }
}

function deleteMusic(e) {
    $.ajax({
        type: "get",
        url: "admin/deleteMusic",
        data: {
            musicName: e.dataset.name,
        },
        async: false,
        cache: false,
        success: function (data) {
            console.log(data);
            if (data.stauts === "success") {
                alert("删除歌曲成功!");
                queryAllMusic();
            }
            else {
                alert("未知错误，删除失败");
            }
        }
    });
}

function deleteArtist(e) {
    $.ajax({
        type: "get",
        url: "admin/deleteSonger",
        data: {
            SongerName: e.dataset.name,
        },
        async: false,
        cache: false,
        success: function (data) {
            console.log(data);
            if (data.stauts === "success") {
                alert("删除歌手成功!");
                queryAllSonger()
            }
            else {
                alert("未知错误，删除失败");
            }
        }
    });
}