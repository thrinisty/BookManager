package com.bean;

import java.util.List;

public class Test {
    public static void main(String[] args) {
        BookDao bookDao = new BookDao();
        int id = 4;
        String sql = "delete from book where id = ?";
        int update = bookDao.update(sql, id);
        System.out.println(update);

        id = 3;
        String name = "another";
        String author = "another";
        double price = 3.5;

        sql = "update book set `title` = ?, `author` = ?, `price` = ? where `id` = ?";
        update = bookDao.update(sql, name, author, price, id);
        System.out.println(update);
    }
}
