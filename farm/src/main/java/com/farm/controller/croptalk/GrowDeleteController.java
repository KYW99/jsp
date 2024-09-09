package com.farm.controller.croptalk;

import java.io.IOException;

import com.farm.service.ArticleService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/croptalk/growdelete.do")
public class GrowDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 private ArticleService service = ArticleService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String no = req.getParameter("no");
		
		service.deleteArticle(no);
		
		resp.sendRedirect("/farm/croptalk/grow.do");
	}
	
}

