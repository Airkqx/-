<%--
  Created by IntelliJ IDEA.
  User: dingr
  Date: 2022-05-17
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/checkdemand.css">
</head>
<body>
<table class="pure-table pure-table-horizontal">
    <tr>
        <td>Id</td> <td>${VoluntaryInformation.id}</td>
    </tr>
    <tr>
        <td>Title</td><td>${VoluntaryInformation.title}</td>
    </tr>
    <tr>
        <td>School</td><td>${VoluntaryInformation.school}</td>
    </tr>
    <tr>
        <td>Director</td><td>${VoluntaryInformation.director}</td>
    </tr>
    <tr>
        <td>PhoneNumber</td><td>${VoluntaryInformation.phoneNumber}</td>
    </tr>
    <tr>
        <td>Email</td><td>${VoluntaryInformation.email}</td>
    </tr>
    <tr>
        <td>Address</td><td>${VoluntaryInformation.address}</td>
    </tr>

    <tr>
        <td>StartTime</td><td>${VoluntaryInformation.startTime}</td>
    </tr>
    <tr>
        <td>Endtime</td><td>${VoluntaryInformation.endTime}</td>
    </tr>
    <tr>
        <td>Description</td><td>${VoluntaryInformation.description}</td>
    </tr>


</table>

<p style="text-align: center">
    <a href="/admin/checkvoluntary/${VoluntaryInformation.id}/aggree" onclick="MsgBox1()">Consent to apply</a>
    &nbsp&nbsp&nbsp
    <a href="/admin/checkvoluntary/${VoluntaryInformation.id}/reject" onclick="MsgBox2()">Refuse an application</a>
</p>
<%--<p style="text-align: center"><a href="/returnAdmin">Return to the home page</a></p>--%>

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
