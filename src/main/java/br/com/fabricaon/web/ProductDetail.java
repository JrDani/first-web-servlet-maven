package br.com.fabricaon.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fabricaon.dao.BookDAO;
import br.com.fabricaon.model.Book;

public class ProductDetail implements Task {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		long id = Integer.parseInt(req.getParameter("id"));
		BookDAO livroDAO = new BookDAO();
		Book book = livroDAO.searchById(id);		
		if(book == null) {			
			try {
				//id invalid = redirect to home page
				resp.sendRedirect("");
			} catch (IOException e) {
				e.printStackTrace();
			}
			return null;
		}
		book.newVisit();
		System.out.println(book.getName());
		req.setAttribute("book", book);
		return "WEB-INF/pages/product.jsp";
	}

}
