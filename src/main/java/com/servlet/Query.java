package com.servlet;

import com.bean.Book;
import com.bean.BookDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/query")
public class Query extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BookDao bookDao = new BookDao();
        String sql = "select * from book";
        List<Book> books = bookDao.queryMulti(sql, Book.class);
        // 将数据存入request属性
        req.setAttribute("books", books);
        // 转发到JSP页面
        req.getRequestDispatcher("/admin/query.jsp").forward(req, resp);
    }
}
