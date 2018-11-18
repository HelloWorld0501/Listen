var username = document.getElementById("name");
var passwd = document.getElementById("passwd");
var email = document.getElementById("email");
//邮箱正则
var pattern = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;


function signUp() {
    if (username.value === "" || passwd.value === "" || email.valueOf === ""){
        alert("请正确填写注册信息!");
    } else if(!pattern.test(email.value)){
        alert("请正确填写邮箱格式");
    }else {
        submitData();
    }
}

function submitData() {
    $.ajax({
        type:"get",
        url:"signup/create",
        data:{
            name:username.value,
            password:passwd.value,
            email:email.value
        },
        async:false,
        success:function (data) {
            if (data.stauts === "success"){
                alert("注册成功!");
            }else {
                alert("注册失败,邮箱已经被注册!");
            }
            username.value = "";
            passwd.value = "";
            email.value = "";
        }
    });
}