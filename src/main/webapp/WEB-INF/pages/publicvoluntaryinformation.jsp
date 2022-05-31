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
<h1 style="text-align: center">View all voluntray information</h1>
<table class="pure-table pure-table-horizontal">
        <tr>
            <td>ID</td>
            <td>Title</td>
            <td>Desription</td>
            <td>CheckStatus</td>
            <td>Count</td>
        </tr>
    <c:forEach items="${passVoluntaryInformations}" var="passVoluntaryInformation">
        <tr>
            <td>${passVoluntaryInformation.id}</td>
            <td>${passVoluntaryInformation.title}</td>
            <td>${passVoluntaryInformation.description}</td>
            <td>${passVoluntaryInformation.checked}</td>
            <td>${passVoluntaryInformation.yet}</td>
            <td><a href="/publicvoluntaryinformation/${passVoluntaryInformation.id}/${passVoluntaryInformation.title}">View details</a></td>

        </tr>
    </c:forEach>
</table>

<%--<a href="/returnDemander">返回主页</a>--%>

</body>
</html>
