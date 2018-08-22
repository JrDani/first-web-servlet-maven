package br.com.fabricaon.web;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

@WebFilter({"/controller"})
public class AuthenticationFilter implements Filter{
	
	private static String[] restrict = new String[]{"NewProductPage", "NewProductPost"};	

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		HttpServletRequest req = (HttpServletRequest) request;
		Boolean isRestrict = Arrays.asList(restrict).contains(req.getParameter("action"));
		
		/*users should be logged to access these pages*/
		if(isRestrict && req.getSession().getAttribute("userOn") == null) {			
			
			//uri to redirect after login
			StringBuffer uri = req.getRequestURL();
			if(req.getParameter("action") != null){
				uri.append('?').append(req.getQueryString());
			}
			
			//dispatcher to login.jsp
			req.setAttribute("redirect", uri);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/pages/login.jsp");
			dispatcher.forward(request, response);
	
		}else {
			//they are already logged
			chain.doFilter(request, response);		
		}
		
		 
	}

	@Override
	public void destroy() {
		
	}

}
