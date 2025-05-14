<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户登录</title>
    <base href="${pageContext.request.contextPath}/">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <h1>用户登录</h1>
    <form action="./login" method="get" class="auth-form">
        <div class="form-group">
            <label for="username">用户名</label>
            <input type="text" id="username" name="username" required>
        </div>
        <div class="form-group">
            <label for="password">密码</label>
            <input type="password" id="password" name="password" required>
        </div>
        <button type="submit" class="btn btn-login">登录</button>
        <div class="form-footer">
            还没有账号? <a href="register.jsp">立即注册</a>
        </div>
    </form>
</div>
</body>
</html>