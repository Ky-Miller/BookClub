package com.ky.bookclub.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ky.bookclub.models.Book;
import com.ky.bookclub.services.BookService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/books")
public class BookController {
	
	@Autowired
	private BookService bookServ;
	
	@GetMapping("/new")
	public String createBook(@ModelAttribute("book") Book book) {
		return "book/create.jsp";
	}
	
	@PostMapping("")
	public String processNewBook(@Valid @ModelAttribute("book") Book book, BindingResult result) {
		if(result.hasErrors()) {
			return "book/create.jsp";
		}
		bookServ.create(book);
		return "redirect:/books";
	}
	
	@GetMapping("/edit/m/{id}")
	public String editBook(@PathVariable("id")Long id, Model model) {
		model.addAttribute("book", bookServ.getOne(id));
		return "book/edit.jsp";
	}
	
	@PatchMapping("/{id}")
	public String processEditBook(@Valid @ModelAttribute("book") Book book, BindingResult result) {
		if(result.hasErrors()) {
			return "book/edit.jsp";
		}
		bookServ.update(book);
		return "redirect/books";
	}
	
	@DeleteMapping("/{id}")
	public String deleteBook(@PathVariable("id") Long id) {
		bookServ.delete(id);
		return "redirect:/books";
	}
	
	@GetMapping("/{id}")
	public String displayBook(@PathVariable("id") Long id, Model model) {
		model.addAttribute("book", bookServ.getOne(id));
		return "book/displayOne.jsp";
	}

}
