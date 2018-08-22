package br.com.fabricaon.web;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fabricaon.dao.BookDAO;
import br.com.fabricaon.model.Book;

public class Search implements Task{

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		BookDAO bookDAO = new BookDAO();
		String query = req.getParameter("query");
		Collection<Book> consulta = bookDAO.searchByTitle(query);
		req.setAttribute("books", consulta);
		String titleWithQuery = null;
		if(query != null) 
			titleWithQuery = query+" - ";
		
		req.setAttribute("searchTitle", titleWithQuery);
		return "WEB-INF/pages/search.jsp";
	}

}
