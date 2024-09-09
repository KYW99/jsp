package com.farm.controller.croptalk;

import java.io.IOException;

import com.farm.dto.ArticleDto;
import com.farm.service.ArticleService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/croptalk/schoolview.do")
public class SchoolViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 private ArticleService service = ArticleService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String no = req.getParameter("no");

		// 데이터 조회
		ArticleDto articleDto = service.selectArticle(no);
		
		// 공유 참조
		req.setAttribute("articleDto", articleDto);
		
		// 포워드 (화면 출력)
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/croptalk/schoolView.jsp");
		dispatcher.forward(req, resp);
	}

	
}

