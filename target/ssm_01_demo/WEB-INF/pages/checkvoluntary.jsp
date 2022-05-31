<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Audit demander</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/checkdemand.css">
</head>
<body>
<h1 style="text-align: center ">Check voluntary</h1>
<%--这个可以自己设计一下 看看取出哪些数据合理  --%>
<table class="pure-table pure-table-horizontal" style="width: 45%">
        <tr>
            <td>ID</td>
            <td>Title</td>
            <td style="width: 25%">School</td>
            <td>Description</td>
            <td>&nbsp</td>
        </tr>
    <c:forEach items="${newVoluntaryInformations}" var="newVoluntaryInformation">
        <tr>
            <td>${newVoluntaryInformation.id}</td>
            <td>${newVoluntaryInformation.title}</td>
            <td style="width: 25%;">${newVoluntaryInformation.school}</td>
            <td>${newVoluntaryInformation.description}</td>
            <td><a href="/admin/checkvoluntary/${newVoluntaryInformation.id}">View details</a></td>
        </tr>
    </c:forEach>
</table>

<%--<p style="text-align: right;color: #005cbf"><a href="/returnAdmin">Return to the home page</a></p>--%>

</body>
</html>
