<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>数据查询</title>
    <link rel="stylesheet" href="../css/style.css">
    <style>
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>数据查询</h1>
    <p>以下是查询到的数据：</p>

    <!-- 示例：模拟从数据库查询的数据 -->
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>用户名</th>
            <th>邮箱</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>admin</td>
            <td>admin@example.com</td>
        </tr>
        <tr>
            <td>2</td>
            <td>user1</td>
            <td>user1@example.com</td>
        </tr>
        </tbody>
    </table>

    <a href="welcome.jsp" class="btn">返回欢迎页</a>
</div>
</body>
</html>