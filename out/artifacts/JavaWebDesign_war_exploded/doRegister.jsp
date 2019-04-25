<%--
  Created by IntelliJ IDEA.
  User: 陈生
  Date: 2019/4/12
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>注册之后</title>
</head>
<body>
    <h1><%= request.getSession().getAttribute("result")%></h1>
    <a href="index.jsp">点击返回主页</a>
</body>
</html>
