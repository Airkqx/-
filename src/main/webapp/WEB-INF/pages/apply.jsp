<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 53186
  Date: 2022/5/19
  Time: 0:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Apply</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/checkdemand.css">
</head>
<body>
<h1 style="text-align: center">View volunteer information</h1>
<table class="pure-table pure-table-horizontal">
    <tr>
        <td>Title</td>
        <td>Description</td>
        <td>CheckStatus</td>
        <td>&nbsp</td>
    </tr>
    <c:forEach items="${passVoluntaryInformations2}" var="passVoluntaryInformation2">
        <tr>
            <td> ${passVoluntaryInformation2.title}</td>
            <td>${passVoluntaryInformation2.description}</td>
            <td>${passVoluntaryInformation2.checkStatus}</td>
            <td><a href="/volunteer/apply?title=${passVoluntaryInformation2.title}&name=${volunteer.realName}">Apply</a></td>
        </tr>


    </c:forEach>
</table>

${msg}
<%--<a href="/volunteer/">返回主页</a>--%>
</body>
</html>
