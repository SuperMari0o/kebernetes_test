<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: vitalii
  Date: 05.06.18
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

Instance name: <c:out value="${requestScope.instance}"/>
<br/>
Server host name: <c:out value="${pageContext.request.serverName}"/>
<br/>
Server port: <c:out value="${pageContext.request.serverPort}"/>
<br/>
Session id: <c:out value="${pageContext.session.id}"/>


<br/>
<br/>
<br/>

Session attribute = <c:out value="${sessionScope.key}"/>


</body>
</html>