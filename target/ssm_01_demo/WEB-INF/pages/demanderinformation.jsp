<%--
  Created by IntelliJ IDEA.
  User: dingr
  Date: 2022-04-27
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%--<html>--%>
<%--<head>--%>
<%--    <title>个人信息</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<form action="/demander/changeinformation" method="post">--%>
<%--    <h3>用户名：${demander.username}</h3>--%>
<%--    <h3>真实姓名：${demander.realName}</h3>--%>
<%--    <h3>性别：${demander.sex} </h3>--%>
<%--    <h3>身份证号：${demander.IDCard}</h3>--%>
<%--    <h3>手机号：<input  type="text"  value="${demander.phoneNumber}" name="phoneNumber" ></h3>--%>
<%--    <h3>邮箱：<input  type="email"  value="${demander.email}" name="email"></h3>--%>
<%--    <h3>职业：<input type="text" value="${demander.profession}" name="profession"></h3>--%>

<%--    <input type="submit" name="修改信息">--%>
<%--</form>--%>
<%--<p> ${Message}</p>--%>

<%--<a href="/returnDemander">返回主页</a>--%>


<%--</body>--%>
<%--</html>--%>
<html>
<head>
    <title>Private information</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/checkdemand.css">
    <script src="js/style.js" type="text/javascript"></script>
    <style>
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
<center><h2>View/modify personal information</h2></center>
<form action="/demander/changeinformation" method="post">
    <table class="pure-table pure-table-horizontal">
        <tr>
            <td>Username：</td>
            <td>${demander.username}</td>
        </tr>
        <tr>
            <td>RealName：</td>
            <td>${demander.realName}</td>
        </tr>
        <tr>
            <td>Sex：</td>
            <td>${demander.sex}</td>
        </tr>
        <tr>
            <td>ID card：</td>
            <td>${demander.IDCard}</td>
        </tr>
        <tr>
            <td>Phone Number：</td>
            <td><input  type="text"  value="${demander.phoneNumber}" name="phoneNumber" ></td>
        </tr>
        <tr>
            <td>Email：</td>
            <td><input  type="email"  value="${demander.email}" name="email"></td>
        </tr>
        <tr>
            <td>Profession：</td>
            <td><input type="text" value="${demander.profession}" name="profession"></td>
        </tr>
        <tr>
            <td colspan="2"><button type="submit" onclick="MsgBox1()">Change information</button></td>
        </tr>
    </table>
</form>
<p> ${Message}</p>
</body>
<script language="javascript">
    function MsgBox1() //声明标识符
    {
        alert("Change Success"); //弹出对话框
    }

</script>
</html>