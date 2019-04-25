<%--
  Created by IntelliJ IDEA.
  User: 陈生
  Date: 2019/4/22
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
<h1 align="center">注册页面</h1>
<form name="registerForm" action="doRegisterServlet" method=post>
    <table align="center" >
        <tr>
            <td>用户名：</td><td><input type=text name=username /></td>
        </tr>
        <tr>
            <td>密码：</td><td><input type=password name=password /></td>
        <tr/>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="done" />
                <input type="reset" value="reset" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>
