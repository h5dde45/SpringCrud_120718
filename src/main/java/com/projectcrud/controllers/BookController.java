package com.projectcrud.controllers;

import com.projectcrud.model.Book;
import com.projectcrud.services.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping
public class BookController {

    @Autowired
    private BookService bookService;

    @GetMapping(value = "/books")
    public String bookList(Model model) {
        model.addAttribute("book", new Book());
        model.addAttribute("books", bookService.findAll());
        return "bookList";
    }

    @PostMapping(value = "/books/add")
    public String addBook(@ModelAttribute("book") Book book){
            bookService.addBook(book);
        return "redirect:/books";
    }

    @GetMapping("/remove/{id}")
    public String removeBook(@PathVariable("id") int id){
        bookService.removeBook(id);
        return "redirect:/books";
    }

    @GetMapping("/edit/{id}")
    public String editBook(@PathVariable("id") int id,
                           Model model){
        model.addAttribute("book", bookService.findById(id));
        model.addAttribute("books", bookService.findAll());
        return "bookList";
    }

    @GetMapping("/bookData/{id}")
    public String bookdata(@PathVariable("id") int id,
                           Model model){
        model.addAttribute("book", bookService.findById(id));
        return "bookData";
    }




}
