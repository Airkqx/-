<%--
  Created by IntelliJ IDEA.
  User: dingr
  Date: 2022-04-24
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>需求者注册</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<form id="one"  action="checkdemanderregister" method="post" enctype="multipart/form-data">--%>
<%--    用户名:<input type="text" name="username" required>--%>
<%--    密码：<input type="password" name="password" required>--%>
<%--    真实姓名：<input type="text" name="realName" required>--%>
<%--    性别：<input type="text" name="sex" required>--%>
<%--    身份证号：<input type="text" name="IDCard" required>--%>
<%--    邮箱：<input type="email" name="email" required>--%>
<%--    电话：<input type="text" name="phoneNumber" required>--%>
<%--    职业：<input type="text" name="profession" required>--%>
<%--    上传身份证照片：<input type="file" name="photo"><span>${fileError}</span>--%>
<%--        <input type="submit" value="注册">--%>
<%--    </form>--%>
<%--<a href="return">返回首页</a>--%>

<%--    </body>--%>

<%--</html>--%>
<html>
<head>
    <title>Demander registration</title>
<%--    <link rel="stylesheet" type="text/css" href="css/样式.css">--%>
<%--    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/checkdemand.css">--%>
<%--    <script src="js/style.js" type="text/javascript"></script>--%>
    <style>
        input{
            background:transparent;
            border:1px solid #ffffff
        }
        body{
            background-image: url("/../images/背景2.jpg");
        }
        td{
            text-align: center;
        }

        input{
            border: 1px solid #ccc;
            padding: 7px 0px;
            border-radius: 3px;
            padding-left:5px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s
        }
        input:focus{
            border-color: #66afe9;
            outline: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
        }

        button{
            width: 250px;
            height: 40px;
            border: #aabdee;
            background: linear-gradient(-200deg,  #aabdee, #faf2c0);
            color: #fff;
            font-weight: bold;
            letter-spacing: 8px;
            border-radius: 10px;
            cursor: pointer;
            transition: 0.5s;
        }
        button:hover{
            background: linear-gradient(-22deg, #eeeeaa, #fad3c0);
            background-position-x: -250px;
        }
    </style>
</head>
<body>
<center>
    <h2>Demander registration</h2>
    <form id="one"  action="checkdemanderregister" method="post" onsubmit="return Test()" enctype="multipart/form-data">
        <table style="width: 50% " class="pure-table pure-table-horizontal">
            <tr>
                <td>User Name:</td>
                <td><input id="user" type="text" name="username" placeholder="Username" onblur="checkUser()" required></td>
                <td style="width: 30%;font-size: 10px"><div id="username"></div></td>
            </tr>
            <tr>
                <td>Password：</td>
                <td><input id="pwd" type="password" name="password" placeholder="Password" onblur="checkPwd()"  required ></td>
                <td style="width: 30%;font-size: 10px"><div id="userid"></div></td>
            </tr>
            <tr>
                <td>Real Name：</td>
                <td><input type="text" name="realName"></td>
                <td></td>
            </tr>
            <tr>
                <td>Sex：</td>
                <td><input type="text" name="sex"></td>
                <td></td>
            </tr>
            <tr>
                <td>IDCard：</td>
                <td><input id="pid" type="text" name="IDCard" placeholder="IDcard" required onblur="checkPID()"></td>
                <td style="width: 30%;font-size: 10px"><div id="number"></div></td>
            </tr>
            <tr>
                <td>Email：</td>
                <td><input id="email" type="email" name="email" placeholder="Email" required onblur="checkEmail()"></td>
                <td style="width: 30%;font-size: 10px"><div id="emailTest"></div></td>
            </tr>
            <tr>
                <td>Phone Number：</td>
                <td><input id="mobile" type="text" name="phoneNumber" placeholder="PhoneNumber" required onblur="checkMobile()"></td>
                <td style="width: 30%;font-size: 10px"><div id="mobilephone"></div></td>
            </tr>
            <tr>
                <td>Profession：</td>
                <td><input type="text" name="profession"></td>
                <td></td>
            </tr>
            <tr>
                <td>Uploading id card photo：</td>
                <td><input type="file" name="photo"><span>${fileError}</span></td>
                <td></td>
            </tr>
            <tr>
                <td><a href="return"><input  style="background: #bee5eb"type="button" value="Back homepage"></a></td>
                <td><input style="background: #bee5eb" type="submit" value="Register"></td>
                <td></td>
            </tr>
        </table>
    </form>
    <script language="JavaScript">
        //用户名
        function checkUser(){
            var user=document.getElementById("user").value;//取到值
            var userId=document.getElementById("username");//取到响应元素
            userId.innerHTML="";//先让他赋值为空
            var reg=/^[a-zA-Z][a-zA-Z0-9]{3,15}$/;
            if(!reg.test(user)){//把需要验证的变量丢进去
                //假的话
                userId.innerHTML="Incorrect user name (must contain 4 to 16 letters and digits and start with a letter) "
                return false;
            }
            else {
                userId.innerHTML="Input  correct"
                return true;
            }


        }
        //密码
        function checkPwd(){
            var pwd=document.getElementById("pwd").value;//取到值
            var pwdId=document.getElementById("userid");//取到响应元素
            pwdId.innerHTML="";
            var reg=/^[a-zA-Z0-9]{4,10}$/;
            if(reg.test(pwd)==false){
                pwdId.innerHTML="The password cannot contain illegal characters (4 to 10 characters of letters and digits). "
                return false;
            }
            else {
                pwdId.innerHTML="Input  correct"
                return true;
            }
        }
        //邮箱
        function checkEmail(){
            var email=document.getElementById("email").value;//取到值
            var emailTest=document.getElementById("emailTest");//取到响应元素
            emailTest.innerHTML="";
            var reg=/^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/;
            if(reg.test(email)==false){
                emailTest.innerHTML="The Email format is incorrect,for example,11@qq.com";
                return false;
            }
            else {
                emailTest.innerHTML="Input  correct"
                return true;
            }
        }
        //手机号
        function checkMobile(){
            var mobile=document.getElementById("mobile").value;//取到值
            var mobileId=document.getElementById("mobilephone");//取到响应元素
            mobileId.innerHTML="";
            var regMobile=/^1\d{10}$/;
            if(regMobile.test(mobile)==false){
                mobileId.innerHTML="mobile phone number is incorrect(Eleven digits starting with 1)";
                return false;
            }
            else {
                mobileId.innerHTML="Input  correct"
                return true;
            }
        }
        //身份证
        function checkPID(){
            var birth=document.getElementById("pid").value;
            var birthId=document.getElementById("number");
            //var reg=/^\d{18}$|^\d{15}$/;
            var reg=/^[0-9]{18}$|^[0-9]{15}$/;
            if(reg.test(birth)==false){
                birthId.innerHTML="The number can only be 15 or 18 digits";
                return false;
            }
            else {
                birthId.innerHTML="Input  correct"
                return true;
            }
        }
        function Test(){
            if(checkUser()&&checkPwd()&&checkPID()&&checkMobile()&&checkEmail()){
                return true;
            }
            else {
                alert("Please enter correctly");
                return false;
            }
        }
    </script>
</center>
</body>
</html>
