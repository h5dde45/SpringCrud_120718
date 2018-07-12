package com.projectcrud.controllers;

import com.projectcrud.services.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BookController {

    @Autowired
    private BookService bookService;

    @GetMapping
    public String hello(Model model) {
        model.addAttribute("message",
                bookService.getBookById(24).getBookAuthor());
        return "hello";
    }
}
