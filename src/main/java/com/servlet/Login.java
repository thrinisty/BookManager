package com.servlet;

import com.bean.User;
import com.bean.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        //这里需要加入查询用户数据库获取账号密码，返回List<User>集合

        UserDao userDao = new UserDao();
        String sql = "select * from user";
        List<User> users = userDao.queryMulti(sql, User.class);
        for (User user : users) {
            if (username.equals(user.getUsername()) && password.equals(user.getPassword())) {
                System.out.println("Login Success");
                req.getSession().setAttribute("user", username);
                resp.sendRedirect(req.getContextPath() + "/admin/welcome.jsp");
                return;
            }
        }
        System.out.println("Login Failed");
        req.getRequestDispatcher("/login.jsp").forward(req, resp);
    }
}
