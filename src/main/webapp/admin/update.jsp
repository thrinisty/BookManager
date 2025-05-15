<%--
  Created by IntelliJ IDEA.
  User: 71460
  Date: 2025/5/15
  Time: 09:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>修改书籍信息</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            line-height: 1.6;
        }
        .container {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        h1 {
            color: #333;
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .btn {
            display: inline-block;
            padding: 8px 16px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            border: none;
            cursor: pointer;
            margin-right: 10px;
        }
        .btn:hover {
            background-color: #45a049;
        }
        .btn-container {
            text-align: center;
            margin-top: 20px;
        }
        .error {
            color: red;
            margin-top: 5px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>修改书籍信息</h1>

    <form action="../update" method="get">
        <div class="form-group">
            <label for="title">书本id:</label>
            <input type="text" id="id" name="id" value="${book.id}" required>
        </div>
        <div class="form-group">
            <label for="title">书名:</label>
            <input type="text" id="title" name="title" value="${book.title}" required>
        </div>

        <div class="form-group">
            <label for="author">作者:</label>
            <input type="text" id="author" name="author" value="${book.author}" required>
        </div>

        <div class="form-group">
            <label for="price">价格:</label>
            <input type="number" id="price" name="price" value="${book.price}" step="0.01" min="0" required>
        </div>

        <div class="btn-container">
            <button type="submit" class="btn">保存修改</button>
            <a href="query.jsp" class="btn">取消返回</a>
        </div>
    </form>
</div>
</body>
</html>
