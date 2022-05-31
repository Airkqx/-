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

<table class="pure-table pure-table-horizontal">
    <tr >
        <td colspan="2">User Information</td>
    </tr>
    <tr>
        <td>Title</td>
        <td>${demandInformation.title}</td>
    </tr>
    <tr>
        <td>ID:</td>
        <td>${demandInformation.id}</td>
    </tr>
    <tr>
        <td>Demander:</td>
        <td>${demandInformation.demander}</td>
    </tr>
    <tr>
        <td>Email:</td>
        <td>${demandInformation.email}</td>
    </tr>
    <tr>
        <td>EndTime:</td>
        <td>${demandInformation.endTime}</td>
    </tr>
    <tr>
        <td>Description</td>
        <td>${demandInformation.description}</td>
    </tr>
    <tr>
        <td>PhoneNumber</td>
        <td>${demandInformation.phoneNumber}</td>
    </tr>
</table>

<%--这个自己用demandInformation.去取值--%>
<p style="text-align: center">
    <a href="/admin/checkdemand/${demandInformation.id}/aggree" onclick="MsgBox1()">Consent to apply</a>
    &nbsp&nbsp&nbsp
    <a href="/admin/checkdemand/${demandInformation.id}/reject" onclick="MsgBox2"()>Refuse an application</a>
</p>
<%--<p style="position: absolute;left: 42%;top: 32%"><a href="/returnAdmin">Return to the home page</a></p>--%>


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
