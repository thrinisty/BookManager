package com.servlet;

import com.bean.BookDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/insert")
public class Insert extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        System.out.println("insert servlet");
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String author = req.getParameter("author");
        double price = Double.parseDouble(req.getParameter("price"));
        System.out.println("id:" + id + " name:" + name + " author:" + author + " price:" + price);

        BookDao bookDao = new BookDao();
        String sql = "insert into book values(?,?,?,?)";
        int update = bookDao.update(sql, id, name, author, price);
        System.out.println("添加 "+ update +" 本书籍");
        req.getRequestDispatcher("/admin/query.jsp").forward(req, resp);
    }
}
