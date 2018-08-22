package br.com.fabricaon.web;

import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fabricaon.dao.BookDAO;
import br.com.fabricaon.model.Book;

public class Home implements Task{

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		BookDAO bookDAO = new BookDAO();
		Collection<Book> books = bookDAO.orderByVisit();
		List<Book> mostPopular = books.stream().limit(4).collect(Collectors.toList());
		
		req.setAttribute("books", mostPopular);
		return "/WEB-INF/pages/index.jsp";
	}

}
