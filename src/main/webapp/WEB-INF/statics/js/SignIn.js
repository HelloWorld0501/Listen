var email = document.getElementById("email");
var passwd = document.getElementById("passwd");

var pattern = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

function Login() {
    if (email.value === "" || passwd === ""){
        alert("请正确填写账号信息!")
    } else if(!pattern.test(email.value)){
        alert("请正确填写邮箱!")
    }else {
        submitData();
    }
}

function submitData() {
    $.ajax({
        type:"get",
        url:"signin/login",
        data:{
            password:passwd.value,
            email:email.value
        },
        async:false,
        success:function (data) {
            if (data.stauts === "success"){
                alert("登录成功!");
                window.location.href = 'index';
            }else {
                alert("登录失败,请检查邮箱与密码是否匹配!");
            }
        }
    });
}