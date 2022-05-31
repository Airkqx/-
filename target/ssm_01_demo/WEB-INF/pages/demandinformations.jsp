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
<h1 style="text-align: center">Review the information you have submitted</h1>


<table class="pure-table pure-table-horizontal">
    <tr>
        <td>ID</td>
        <td>Title</td>
        <td>Description</td>
        <td>CheckStatus</td>
    </tr>
    <c:forEach items="${demandinformations}" var="demandinformation">

        <tr>
            <td>${demandinformation.id}</td>
            <td>${demandinformation.title}</td>
            <td>${demandinformation.description}</td>
            <td>${demandinformation.checked}</td>
            <td><a href="/demander/demandinformations/${demandinformation.id}">finish</a></td>
            <td><a href="/publicdemandinformation/${demandinformation.id}">View details</a></td>

        </tr>
    </c:forEach>
</table>
<%--<a href="/returnDemander">返回主页</a>--%>

</body>
</html>
