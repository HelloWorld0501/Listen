var username = getCookie("userName");
var useremail = getCookie("userEmail");

if (username === null || useremail === null) {
    alert("您还未登录!");
    window.location.href = 'signin';
} else {
    window.onload=function () {
        document.getElementById('username_title').innerHTML = username;
    }
}


function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i].trim();
        if (c.indexOf(name) == 0) return c.substring(name.length, c.length);
    }
    return null;
}

function Exit() {
    //获取所有Cookie，并把它变成数组
    var cookies = document.cookie.split(";");
    for (var i = 0; i < cookies.length; i++) {
        var cookie = cookies[i];
        var eqPos = cookie.indexOf("=");
        var name = eqPos > -1 ? cookie.substr(0, eqPos) : cookie;
        name = name.replace(/^\s*|\s*$/, "");//清除Cookie里的空格
        document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/";
    }
    alert("您已经退出登录!");
    if (ap != null){
        ap.destroy();
    }
    window.location.href = 'signin';
}