package com.farm.controller.croptalk;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/croptalk/school.do")
public class SchoolController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// private ArticleService service = ArticleService.getInstance();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/croptalk/school.jsp");
		dispatcher.forward(req, resp);

	}
}


