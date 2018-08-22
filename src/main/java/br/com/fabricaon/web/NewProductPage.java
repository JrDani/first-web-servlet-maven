package br.com.fabricaon.web;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NewProductPage implements Task {
	
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {		
		return "WEB-INF/pages/new-product.jsp";
	}
}
