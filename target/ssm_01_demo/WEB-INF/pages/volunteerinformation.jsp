<%--
  Created by IntelliJ IDEA.
  User: dingr
  Date: 2022-04-27
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Modify volunteer information</title>
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
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;

        }
        input:focus{
            border-color: #66afe9;
            outline: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);

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

<form action="/volunteer/changeinformation" method="post">
    <h1 style="text-align: center">Modify volunteer information</h1>
    <table class="pure-table pure-table-horizontal">
        <tr>
            <td>UserName：</td>
            <td>${volunteer.username}</td>
        </tr>
        <tr>
            <td>RealName：</td>
            <td>${volunteer.realName}</td>
        </tr>
        <tr>
            <td>Sex：</td>
            <td>${volunteer.sex}</td>
        </tr>
        <tr>
            <td>ID Card：</td>
            <td>${volunteer.IDCard}</td>
        </tr>
        <tr>
            <td>PhoneNumber：</td>
            <td><input  type="text"  value="${volunteer.phoneNumber}" name="phoneNumber" ></td>
        </tr>
        <tr>
            <td>Email：</td>
            <td><input  type="email"  value="${volunteer.email}" name="email"></td>
        </tr>
        <tr>
            <td>Address：</td>
            <td><input type="text" value="${volunteer.address}" name="address"></td>
        </tr>
        <tr>
            <td>self-introduction：</td>
            <td><input type="text" value="${volunteer.description}" name="description"></td>
        </tr>
        <tr>
            <td> </td>
            <td><input type="submit" value="Modify information" ></td>
        </tr>
    </table>
</form>
<%--<p> ${Message}</p>--%>
<%--<p style="text-align: center;font-size: 20px"><a  href="/volunteer/">Return to the home page</a></p>--%>


</body>



</html>
