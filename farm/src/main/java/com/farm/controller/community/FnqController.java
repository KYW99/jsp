package com.farm.controller.community;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/community/fnq.do")
public class FnqController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// private ArticleService service = ArticleService.getInstance();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/community/fnq.jsp");
		dispatcher.forward(req, resp);

	}
}
