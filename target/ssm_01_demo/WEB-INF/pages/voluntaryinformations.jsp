<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dingr
  Date: 2022-05-07
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/checkdemand.css">
</head>
<body>
<h1 style="text-align: center">View the voluntary information you have submitted</h1>

<table class="pure-table pure-table-horizontal">
    <tr>
        <td>ID:</td>
        <td>Title:</td>
        <td>School:</td>
        <td>CheckStatus:</td>
        <td>Finish it</td>
        <td>Definite</td>
        <td>Counting</td>

    </tr>

    <c:forEach items="${voluntaryInformations}" var="voluntaryInformation">
    <tr>

            <td>${voluntaryInformation.id}</td>
            <td>${voluntaryInformation.title}</td>
            <td>${voluntaryInformation.school}</td>
            <td>${voluntaryInformation.checked}</td>
            <td><a href="/demander/voluntaryinformations/${voluntaryInformation.id}">finish</a></td>
            <td><a href="/publicvoluntaryinformation/${voluntaryInformation.id}/${voluntaryInformation.title}">View details</a></td>
            <td>${voluntaryInformation.yet}</td>
            <td>${counting}</td>
    </tr>
    </c:forEach>

</table>

<%--<a href="/returnDemander">返回主页</a>--%>

</body>
</html>
