package com.projectcrud.services;

import com.projectcrud.dao.BookDao;
import com.projectcrud.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookService {
    @Autowired
    private BookDao bookDao;

    public List<Book> findAll(){
       return bookDao.findAll();
    }

    public void addBook(Book book) {
        bookDao.save(book);
    }

    public void removeBook(int id) {
        bookDao.deleteById(id);
    }

    public Book findById(int id) {
        return bookDao.findById(id).get();
    }


//    @Override
//    @Transactional
//    public void addBook(Book book) {
//        bookDao.addBook(book);
//    }
//
//    @Override
//    @Transactional
//    public void updateBook(Book book) {
//        bookDao.updateBook(book);
//    }
//
//    @Override
//    @Transactional
//    public void removeBook(int id) {
//        bookDao.removeBook(id);
//    }
//
//    @Override
//    @Transactional
//    public Book getBookById(int id) {
//        return bookDao.getBookById(id);
//    }
//
//    @Override
//    @Transactional
//    public List<Book> listBooks() {
//        return bookDao.listBooks();
//    }
}
