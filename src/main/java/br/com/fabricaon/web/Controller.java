package br.com.fabricaon.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns={"/controller", ""})
public class Controller extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String task = req.getParameter("action");
		
		if(task == null) {							
			task = "Home";			
		}
		
		String className = "br.com.fabricaon.web."+task;
		Task object;
		try {
			//pega a classe passando uma string
			Class<?> type = Class.forName(className);			
			//instancia a classe com um objeto que implementa Task
			object = (Task) type.newInstance();
		} catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {

			throw new ServletException(e);
		}
		
		String goThisView = object.execute(req, resp);
		RequestDispatcher dispatcher = req.getRequestDispatcher(goThisView);
		dispatcher.forward(req, resp);
	}

}
