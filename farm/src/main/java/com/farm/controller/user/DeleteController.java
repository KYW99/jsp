package com.farm.controller.user;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.farm.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/user/delete.do")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UserService service = UserService.INSTANCE;
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 데이터 수신
		String uid = req.getParameter("uid");
		
		// 데이터 삭제
		service.deleteUser(uid);
		
		// 로그아웃
		HttpSession session = req.getSession();
		session.removeAttribute("sessUser");
		session.invalidate();
		
		// 리다이렉트
		resp.sendRedirect("/farm/index.do");
	
	}
}
