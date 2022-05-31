<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 53186
  Date: 2022/5/19
  Time: 14:12
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
    <c:forEach items="${applyList}" var="applyList">
        <tr>
            <td>VoluntaryApply</td>
            <td>${applyList.voluntaryApply}</td>
            <td><a href="/deleteApply?voluntaryApply=${applyList.voluntaryApply}">Exit the activity</a></td>
        </tr>
    </c:forEach>
</table>

<%--<a href="/volunteer/">返回主页</a>--%>

</body>
</html>
