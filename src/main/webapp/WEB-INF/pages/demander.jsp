<%--
  Created by IntelliJ IDEA.
  User: dingr
  Date: 2022-04-24
  Time: 19:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/checkdemand.css">
</head>
<body>
<div style="float:left;">
    <h1 style="text-align: center">Userinformation</h1>
    <table class="pure-table pure-table-horizontal">
        <tr>
            <td>ID</td>
            <td>${demander.id}</td>
        </tr>
        <tr>
            <td>UserName</td>
            <td>${demander.username}</td>
        </tr>
        <tr>
            <td>RealName</td>
            <td>${demander.realName}</td>
        </tr>
        <tr>
            <td>Sex</td>
            <td>${demander.sex}</td>
        </tr>
        <tr>
            <td>ID Card</td>
            <td>${demander.IDCard}</td>
        </tr>
        <tr>
            <td>Phone Number</td>
            <td>${demander.phoneNumber}</td>
        </tr>
        <tr>
            <td>Email</td>
            <td>${demander.email}</td>
        </tr>
    </table>

</div>
<div style="float:right;">
    <h3>Identity card photo </h3>
    <img style="height: 270px;width: 540px" src="/photo/${demander.IDCardPhoto}">
    <br>
    <a href="/admin/checkdemander/${demander.id}/aggree" onclick="MsgBox1()">Consent to apply</a>
    &nbsp&nbsp&nbsp
    <a href="/admin/checkdemander/${demander.id}/reject" onclick="MsgBox2()">Refuse an application
    </a>
    <br>
<%--    <a href="/returnAdmin">Return to the home page</a>--%>
</div>

</body>

<script language="javascript">
    function MsgBox1() //声明标识符
    {
        alert("Apply Success"); //弹出对话框
    }
    function MsgBox2() //声明标识符
    {
        alert("Refuse Success"); //弹出对话框
    }
</script>
</html>
