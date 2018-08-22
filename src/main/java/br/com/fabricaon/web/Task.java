package br.com.fabricaon.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Task {
	public String execute(HttpServletRequest req, HttpServletResponse resp);
}
