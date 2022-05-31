<%--
  Created by IntelliJ IDEA.
  User: 53186
  Date: 2022/5/17
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/checkdemand.css">
    <style>
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
<form action="missPassword" method="post">
    <table class="pure-table pure-table-horizontal">
        <tr>
            <td>Please enter your account number:</td>
            <td><input type="text" name="username" required><br></td>
        </tr>
        <tr>
            <td>You are: </td>
            <td style="font-size: 15px">Admin<input type="radio" name="usertype" value="admin" checked="true">
                Demander<input type="radio" name="usertype" value="demander">
                Volunteer<input type="radio" name="usertype" value="volunteer"></td>
        </tr>
        <tr>
            <td>Please enter your new password:</td>
            <td><input type="password" name="password" required><br></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="text" value="" placeholder="验证码" name="code"></td>

        </tr>
        <tr>
            <td></td>
            <td ><div class="col-sm-2">
            <img id="kaptchaImage" src="/getVerifyCode">
        </div></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Change"></td>
        </tr>
    </table>
    <p style="text-align: center"><a href="return">Back Homepage</a></p>

    <span>${errorMsg}</span>
    <span>${msg}</span>

</form>
</body>
</html>
