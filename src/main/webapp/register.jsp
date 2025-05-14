<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <h1>用户注册</h1>
    <form action="./register" method="get" class="auth-form">
        <div class="form-group">
            <label for="username">用户名</label>
            <input type="text" id="username" name="username" required>
        </div>
        <div class="form-group">
            <label for="password">密码</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div class="form-group">
            <label for="confirm-password">确认密码</label>
            <input type="password" id="confirm-password" name="confirm-password" required>
        </div>
        <button type="submit" class="btn btn-register">注册</button>
        <div class="form-footer">
            已有账号? <a href="login.jsp">立即登录</a>
        </div>
    </form>
</div>
</body>
</html>