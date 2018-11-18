
var ok = null;
while(true){
    if (ok == null)
        isAdmin();
    else
        break;
}

function isAdmin() {
    var passwd = prompt("请管理员密码","");
    while(passwd === ""){
        passwd = prompt("请管理员密码","");
    }
    $.ajax({
        type: "get",
        url: 'admin/adminLogin',
        data:{
            passwd:passwd,
        },
        async: false,
        cache: false,//页面缓存
        success: function (data) {
            console.log(data);
            if (data.stauts === "success")
                ok = "ok";
            else
                ok = null;
        }
    });
}