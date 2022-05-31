<%--
  Created by IntelliJ IDEA.
  User: dingr
  Date: 2022-04-27
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Admin</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>管理后台</h1>--%>

<%--<a href="/admin/checkdemander">审核用户</a>--%>
<%--<a href="/admin/checkdemand">审核需求</a>--%>
<%--<a href="/admin/checkvoluntary">审核志愿</a>--%>




<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Admin Home</title>
    <style>
        body {
            font: 14px Arial,sans-serif;
            margin: 0px;
        }
        header {
            padding: 10px 20px;
            background: #acb3b9;
        }
        header h1 {
            font-size: 24px;
        }
        .container {
            width: 100%;
            background: #f2f2f2;
        }

        nav {
            float: left;
            padding: 20px;
            height: 756px;
            box-sizing: border-box;

        }

        nav {
            width: 300px;
            background: #d4d7dc;
        }
        nav ul {
            list-style: none;
            line-height: 24px;
            padding: 0px;
        }
        nav ul li a {
            color: #333;
        }
        li{
            font-size: 18px;
            margin: 5px;

        }
    </style>
</head>
<body>
<div class="container">
    <header>
        <h1>Management interface</h1>
    </header>
    <div class="wrapper clearfix">
        <nav>
            <ul>
                <li><a href="/admin/checkdemander" target="testiframe">Check demander</a></li>
                <li><a href="/admin/checkdemand" target="testiframe">Check demand information</a></li>
                <li><a href="/admin/checkvoluntary" target="testiframe">Check voluntary information</a></li>
                <li><a href="/demandinformations" target="testiframe">View passed demand Information</a></li>
                <li><a href="/voluntaryinformations" target="testiframe">View passed voluntary information</a></li>
                <li><a href="/" target="_self">Log out</a></li>
            </ul>

        </nav>
        <div style="float: left;width:80%">
            <iframe name="testiframe" id="frame_test" style="height: 100%;width: 100%;" marginwidth="0">

            </iframe>
        </div>




    </div>

</div>
</body>
</html>


