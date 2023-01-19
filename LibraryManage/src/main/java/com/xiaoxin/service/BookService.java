package com.xiaoxin.service;

import com.xiaoxin.model.Book;

import java.util.List;

public interface BookService {
    List<Book> getAllBooks();

    void addBooks(Book book);

    void deleteBooks(int id);

    void recoverBooks(int id);
}
