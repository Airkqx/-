<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Audit demander</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/checkdemand.css">
</head>
<body>
<h1 style="text-align: center">Check demand</h1>

<table class="pure-table pure-table-horizontal">
    <tr>
        <td>ID:</td>
        <td>Title:</td>
        <td>Description:</td>
        <td>&nbsp</td>
    </tr>
    <c:forEach items="${newDemandInformations}" var="newDemandInformation">
        <tr>
            <td>${newDemandInformation.id}</td>
            <td>${newDemandInformation.title}</td>
            <td>${newDemandInformation.description}</td>
            <td><a href="/admin/checkdemand/${newDemandInformation.id}">View details</a></td>
        </tr>

    </c:forEach>
</table>
<%--<p style="text-align: right;color: #005cbf"><a href="/returnAdmin">Return to the home page</a></p>--%>
</body>
</html>
