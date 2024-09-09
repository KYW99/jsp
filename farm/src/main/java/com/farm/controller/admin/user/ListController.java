package com.farm.controller.admin.user;

import java.io.IOException;
import java.util.List;

import com.farm.dto.UserDto;
import com.farm.service.UserService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admin/user/list.do")
public class ListController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private UserService service = UserService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 데이터 조회
		List<UserDto> users = service.selectUsers();
		
		// 공유 참조
		req.setAttribute("users", users);
		
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/admin/user/list.jsp");
		dispatcher.forward(req, resp);
	}
}
