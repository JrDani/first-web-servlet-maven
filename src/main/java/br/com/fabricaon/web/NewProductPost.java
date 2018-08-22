package br.com.fabricaon.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fabricaon.dao.BookDAO;
import br.com.fabricaon.model.Book;


public class NewProductPost implements Task{

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {		
		
		BookDAO livroDAO = new BookDAO();
		String titulo = req.getParameter("titulo");
		String descricao = req.getParameter("descricao");
		Book livro = new Book(titulo, descricao);
		livroDAO.adiciona(livro);
		req.setAttribute("sucesso", true);
		return "WEB-INF/pages/new-product.jsp";
	}
}
