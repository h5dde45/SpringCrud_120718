package com.projectcrud.dao;

import com.projectcrud.model.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookDao extends JpaRepository<Book, Integer> {



//     @Override
//    public void addBook(Book book) {
//        Session session = sessionFactory.getCurrentSession();
//        session.persist(book);
//        logger.info("Book successfully saved. Book details: " + book);
//    }
//
//    @Override
//    public void updateBook(Book book) {
//        Session session = sessionFactory.getCurrentSession();
//        session.update(book);
//        logger.info("Book successfully update. Book details: " + book);
//    }
//
//    @Override
//    public void removeBook(int id) {
//        Session session = sessionFactory.getCurrentSession();
//        Book book = session.load(Book.class, id);
//        if (book != null) {
//            session.delete(book);
//        }
//        logger.info("Book successfully delete. Book details: " + book);
//    }
//
//    @Override
//    public Book getBookById(int id) {
//        Session session = sessionFactory.getCurrentSession();
//        Book book = session.load(Book.class, id);
//        logger.info("Book successfully loader. Book details: " + book);
//        return book;
//    }
//
//    @Override
//    @SuppressWarnings("unchecked")
//    public List<Book> listBooks() {
//        Session session = sessionFactory.getCurrentSession();
//        List<Book> bookList = session.createQuery("from Book").list();
//        for (Book book : bookList) {
//            logger.info("Book successfully loader. Book details: " + book);
//        }
//        return bookList;
//    }
}
