package br.com.fabricaon.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Logout implements Task {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		req.getSession().removeAttribute("userOn");
		return "WEB-INF/pages/login.jsp";
	}

}
