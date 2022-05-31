<%--
  Created by IntelliJ IDEA.
  User: dingr
  Date: 2022-05-01
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%--<html>--%>
<%--<head>--%>
<%--    <title>发布需求信息</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>发布需求信息</h1>--%>

<%--<form action="/demander/submitdemnad" method="post">--%>
<%--    <h3>名称：<input type="text"  name="title" required></h3>--%>
<%--    <h3>需求者：<input type="text" name="demander"required></h3>--%>
<%--    <h3>联系方式：<input type="text" name="phoneNumber"required></h3>--%>
<%--    <h3>邮箱：<input type="email" name="email"required></h3>--%>
<%--    <h3>截止时间:<input type="date" name="endTime" required></h3>--%>
<%--    <h3>介绍：<input type="text" name="description"required> </h3>--%>
<%--    <h3><input type="submit" name="提交" ></h3>--%>



<%--</form>--%>

<%--<a href="/returnDemander">返回主页</a>--%>

<%--</body>--%>
<%--</html>--%>
<html>
<head>
    <title>Publish requirement information</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/checkdemand.css">
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
    <script src="js/style.js" type="text/javascript"></script>
</head>
<body>
<center><h1>Release demand information</h1></center>
<form action="/demander/submitdemnad" method="post">
    <table class="pure-table pure-table-horizontal">
        <tr>
            <td>Name：</td>
            <td><input type="text"  name="title"></td>
        </tr>
        <tr>
            <td>Demander：</td>
            <td><input type="text" name="demander"></td>
        </tr>
        <tr>
            <td>Contect way：</td>
            <td><input type="text" name="phoneNumber"></td>
        </tr>
        <tr>
            <td>Email：</td>
            <td><input type="email" name="email"></td>
        </tr>
        <tr>
            <td>Ending time：</td>
            <td><input type="date" name="endTime" style="width:165px;"></td>
        </tr>
        <tr>
            <td>introduce：</td>
            <td><textarea cols="22" rows="5" name="description" placeholder="Description" required></textarea></td>
        </tr>
        <tr>
            <td colspan="2"><button type="submit" onclick="MsgBox1()">Accept</button></td>
        </tr>
    </table>
</form>
</body>
<script language="javascript">
    function MsgBox1() //声明标识符
    {
        alert("Accept Success"); //弹出对话框
    }

</script>
</html>


