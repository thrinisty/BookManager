package com.servlet;

import com.bean.BookDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete")
public class Delete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        System.out.println("delete function");
        int id = Integer.parseInt(req.getParameter("id"));
        BookDao bookDao = new BookDao();
        String sql = "delete from book where id = ?";
        int update = bookDao.update(sql, id);
        System.out.println(update);
        req.getRequestDispatcher("/admin/query.jsp").forward(req, resp);
    }
}
