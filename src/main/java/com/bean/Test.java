package com.bean;

import java.util.List;

public class Test {
    public static void main(String[] args) {
        BookDao bookDao = new BookDao();
        String sql = "select * from book";
        List<Book> books = bookDao.queryMulti(sql, Book.class);
        for (Book book : books) {
            System.out.println(book);
        }

//        int id = 2;
//        String name = "Book2";
//        String author = "Thrinisty";
//        double price = 311.0;
//        sql = "insert into book values(?,?,?,?)";
//        BookDao bookDao = new BookDao();
//        int update = bookDao.update(sql, id, name, author, price);
//        System.out.println(update);
    }
}
