package br.com.fabricaon.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fabricaon.dao.UserDAO;
import br.com.fabricaon.model.User;

public class NewUserPost implements Task {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {	
		
		String name = req.getParameter("name");
		String user = req.getParameter("user");
		String pass = req.getParameter("pass");	
		
		if(!name.isEmpty() && !user.isEmpty() && !pass.isEmpty()) {		
			User newUser = new User(name, user, pass);
			UserDAO userDAO = new UserDAO();
			userDAO.addUser(newUser);
			req.setAttribute("success", true);			
		}else {			
			req.setAttribute("error", "Complete all fields");
		}
		
		return "WEB-INF/pages/new-user.jsp";
	}

}
