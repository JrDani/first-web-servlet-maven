package br.com.fabricaon.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.fabricaon.dao.UserDAO;
import br.com.fabricaon.model.User;

public class Login implements Task{

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		if(req.getSession().getAttribute("userOn") != null) 		
			return "WEB-INF/pages/index.jsp";		
	
		String username = req.getParameter("user");
		String pass = req.getParameter("pass");		
		User user = new UserDAO().login(username, pass);
		
		if(user!=null) {	
			HttpSession session = req.getSession();
			session.setAttribute("userOn", user);
			
			if(req.getParameter("redirect") == null) {
				redirect(resp, "");
			}
			
			redirect(resp, req.getParameter("redirect"));
			
		}else {
			req.setAttribute("error", "username or password is incorrect");
		}	
		
		return "WEB-INF/pages/login.jsp";
	}
	
	public static void redirect(HttpServletResponse resp, String url) {
		try {
			resp.sendRedirect(url);
		} catch (IOException e) {				
			e.printStackTrace();
		}
	}

}
