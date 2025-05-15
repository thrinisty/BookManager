<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<base href="http://localhost:8080/BookManager/admin/query.jsp">
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>书籍列表</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            line-height: 1.6;
        }
        .container {
            width: 80%;
            margin: 0 auto;
        }
        h1 {
            color: #333;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .btn {
            display: inline-block;
            padding: 8px 16px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            margin: 10px 5px;
            border: none;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #45a049;
        }
        .no-data {
            text-align: center;
            padding: 20px;
            color: #666;
        }
        .btn-container {
            text-align: center;
            margin: 20px 0;
        }
        .action-link {
            color: #0066cc;
            text-decoration: none;
            margin: 0 5px;
        }
        .action-link:hover {
            text-decoration: underline;
        }
        .action-cell {
            white-space: nowrap;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>书籍列表</h1>

    <div class="btn-container">
        <!-- 查询按钮 -->
        <form action="../query" method="get">
            <button type="submit" class="btn">查询所有书籍</button>
        </form>
        <a href="change.jsp" class="btn">添加书籍</a>
        <a href="welcome.jsp" class="btn">返回首页</a>
    </div>

    <c:choose>
        <c:when test="${not empty books}">
            <table>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>书名</th>
                    <th>作者</th>
                    <th>价格</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${books}" var="book">
                    <tr>
                        <td>${book.id}</td>
                        <td>${book.title}</td>
                        <td>${book.author}</td>
                        <td>¥${book.price}</td>
                        <td class="action-cell">
                            <a href="update.jsp?id=${book.id}" class="action-link">修改</a>
                            <a href="../delete?id=${book.id}" class="action-link" onclick="return confirm('确定要删除这本书吗？')">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </c:when>
        <c:otherwise>
            <div class="no-data">当前没有书籍数据，请点击"查询所有书籍"按钮获取数据</div>
        </c:otherwise>
    </c:choose>
</div>
</body>
</html>