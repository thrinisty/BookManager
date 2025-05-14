package com.bean;

import java.util.List;

public class Test {
    public static void main(String[] args) {
        UserDao userDao = new UserDao();
        String sql = "select * from user";
        List<User> users = userDao.queryMulti(sql, User.class);
        for (User user : users) {
            System.out.println(user);
        }
    }
}
