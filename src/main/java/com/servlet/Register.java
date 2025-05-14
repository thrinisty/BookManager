package com.servlet;

import com.bean.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        System.out.println(username + " " + password);
        //待定，这里需要添加使用Bean对象将对象写入数据库的功能

        UserDao userDao = new UserDao();
        String sql = "insert into user values(?, ?)";
        int update = userDao.update(sql, username, password);
        if (update > 0) {
            System.out.println("将用户" + username + "加入到了数据库中");
            System.out.println("Register Success");
            req.getSession().setAttribute("user", username);
            resp.sendRedirect(req.getContextPath() + "/admin/welcome.jsp");
        } else {
            System.out.println("数据库插入语句异常");
        }
    }
}
