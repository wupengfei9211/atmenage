<%--
  Created by IntelliJ IDEA.
  User: Lean
  Date: 2018/3/16
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>"/>
<html>
<head>
    <meta charset="utf-8" />
    <title>Title</title>
    <style>
        table tr td{padding-top: 10px;}
    </style>
</head>
<body>
    <h1 style="text-align: center;">论文管理系统</h1>
    <div style="border: 1px solid dodgerblue;width: 50%;height: 200px;margin: 0 auto;">
        <form action="/logControl/login">
            <table style="margin:0 auto;padding-top: 5%;">
                <tr>
                    <td>用户名:</td>
                    <td><input type="text" name="username"/></td>
                </tr>
                <tr>
                    <td>密码:</td>
                    <td><input type="password" name="userpassword"/></td>
                </tr>
                <tr>
                    <td><input type="submit" name="sub" value="登录"/></td>
                    <td><input type="reset" name="rset" value="重置"/></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>