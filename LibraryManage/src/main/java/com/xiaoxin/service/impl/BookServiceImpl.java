package com.xiaoxin.service.impl;

import com.xiaoxin.dao.BookDAO;
import com.xiaoxin.model.Book;
import com.xiaoxin.model.enums.BookStatusEnum;
import com.xiaoxin.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService {

    @Autowired
    BookDAO bookDAO;

    @Override
    public List<Book> getAllBooks() {
        return bookDAO.selectAll();
    }

    @Override
    public void addBooks(Book book) {
        bookDAO.addBook(book);
    }

    @Override
    public void deleteBooks(int id) {
        bookDAO.updateBookStatus(id, BookStatusEnum.DELETE.getValue());
    }

    @Override
    public void recoverBooks(int id) {
        bookDAO.updateBookStatus(id, BookStatusEnum.NORMAL.getValue());
    }
}
