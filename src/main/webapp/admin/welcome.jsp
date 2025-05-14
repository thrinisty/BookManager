<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>欢迎</title>
    <link rel="stylesheet" href="../css/style.css">
    <style>
        .btn {
            display: inline-block;
            padding: 10px 15px;
            margin: 5px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        .btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>欢迎, <%= session.getAttribute("user") %></h1>
    <p>您已成功登录/注册!</p>

    <!-- 新增数据查询选项 -->
    <div class="action-buttons">
        <a href="../index.jsp" class="btn">返回首页</a>
        <a href="query.jsp" class="btn">数据查询</a>
    </div>
</div>
</body>
</html>