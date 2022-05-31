<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html >
<head>
    <title>View details</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/checkdemand.css">
</head>
<body>
<h1 style="text-align: center ;color: #c82333">Check demander</h1>
<table class="pure-table pure-table-horizontal">
        <tr>
            <td>ID:</td>
            <td>UserName:</td>
            <td>RealName:</td>
            <td>&nbsp</td>
        </tr>
    <c:forEach items="${list}" var="demand">
        <tr>
            <td>${demand.id}</td>
            <td> ${demand.username}</td>
            <td>${demand.realName}</td>
            <td><a href="/admin/checkdemander/${demand.id}">View details</a>  </td>
        </tr>


    </c:forEach>
</table>

<%--<p style="text-align: right;color: #005cbf"><a href="/returnAdmin">Return to the home page</a></p>--%>




</body>
</html>
