<%--
  Created by IntelliJ IDEA.
  User: 71460
  Date: 2025/5/15
  Time: 08:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<base href="http://localhost:8080/BookManager/admin/change.jsp">
<html>
<head>
  <title>添加书籍</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 20px;
      background-color: #f5f5f5;
    }
    .container {
      max-width: 600px;
      margin: 0 auto;
      background-color: white;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
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
    input[type="text"],
    input[type="number"] {
      width: 100%;
      padding: 8px;
      border: 1px solid #ddd;
      border-radius: 4px;
      box-sizing: border-box;
    }
    .submit-btn {
      background-color: #4CAF50;
      color: white;
      padding: 10px 15px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
      width: 100%;
    }
    .submit-btn:hover {
      background-color: #45a049;
    }
    .error {
      color: red;
      font-size: 14px;
    }
  </style>
</head>
<body>
<div class="container">
  <h1>Add New Book</h1>

  <form action="../insert" method="get">
    <div class="form-group">
      <label for="id">Book ID:</label>
      <input type="text" id="id" name="id" required>
    </div>

    <div class="form-group">
      <label for="name">Book Name:</label>
      <input type="text" id="name" name="name" required>
    </div>

    <div class="form-group">
      <label for="author">Author:</label>
      <input type="text" id="author" name="author" required>
    </div>

    <div class="form-group">
      <label for="price">Price:</label>
      <input type="number" id="price" name="price" step="0.01" min="0" required>
    </div>

    <button type="submit" class="submit-btn">Add Book</button>
  </form>

</div>
</body>
</html>