package com.servlet;

import com.bean.BookDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/update")
public class Update extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        BookDao bookDao = new BookDao();
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("title");
        String author = req.getParameter("author");
        double price = Double.parseDouble(req.getParameter("price"));

        System.out.println(id + " " + name + " " + author + " " + price);
        String sql = "update book set `title` = ?, `author` = ?, `price` = ? where `id` = ?";
        int update = bookDao.update(sql, name, author, price, id);
        System.out.println("更新 " + update + " 本书籍");
        req.getRequestDispatcher("/admin/query.jsp").forward(req, resp);
    }
}
