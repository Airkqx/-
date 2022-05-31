<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dingr
  Date: 2022-04-29
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/样式.css">--%>


<%--</head>--%>
<%--<body>--%>
<%--<table--%>
<%--&lt;%&ndash;修改个人信息&ndash;%&gt;--%>
<%--<table>--%>
<%--    <tr>--%>
<%--        <td><a href="/volunteer/volunteerinformation">Modifying personal Information</a></td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <td><a href="/voluntaryinformations2">View volunteer information</a></td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <td><a href="/demandinformations2">Viewing Requirement Information</a></td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <td><a href="/selectApply?volunteerName=${volunteer.realName}">View what I signed up for</a></td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <td><a href="/" >Log out</a></td>--%>
<%--    </tr>--%>
<%--</table>--%>
<%--</body>--%>
<%--</html>--%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Volunteer Home</title>
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
        section {
            width: 80%;
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
                <li><a href="/volunteer/volunteerinformation" target="testiframe">Modifying personal Information</a></li>
                <li><a href="/voluntaryinformations2?volunteerName=${volunteer.realName}" target="testiframe">View volunteer information</a></li>
                <li><a href="/selectApply?volunteerName=${volunteer.realName}" target="testiframe">View what I signed up for</a></li>
                <li><a href="/voluntaryinformations" target="testiframe">View all voluntary information</a></li>
                <li><a href="/demandinformations" target="testiframe">View all demand Information</a></li>
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