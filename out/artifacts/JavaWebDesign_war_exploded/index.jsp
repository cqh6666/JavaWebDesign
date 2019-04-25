<%--
  Created by IntelliJ IDEA.
  User: 陈生
  Date: 2019/4/12
  Time: 19:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>demo</title>
  </head>
  <body>
  <h1 align="center">欢迎登录</h1>
  <form name="loginForm" action="doLoginServlet" method=post>
    <table align="center" >
      <tr>
        <td>用户名：</td><td><input type=text name=username /></td>
      </tr>
      <tr>
        <td>密码：</td><td><input type=password name=password /></td>
      <tr/>
      <tr>
        <td colspan="2" align="center">
          <input type="submit" value="submit" />
          <input type="reset" value="reset" />
        </td>
      </tr>
    </table>
    <p align="center" class="knd"><a href="register.jsp">注册点这里！</a></p>
    <p align="center" class="knd" title="用户名是[admin]">不知道用户？指这里</p>
    <p align="center" class="knd" title="密码是[123456]">不知道密码？指这里</p>
  </form>
  </body>
</html>
