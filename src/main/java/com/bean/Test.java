package com.bean;

import java.util.List;

public class Test {
    public static void main(String[] args) {
        int id = 2;
        String name = "Book2";
        String author = "Thrinisty";
        double price = 311.0;

        BookDao bookDao = new BookDao();
        String sql = "insert into book values(?,?,?,?)";
        int update = bookDao.update(sql, id, name, author, price);
        System.out.println(update);
    }
}
