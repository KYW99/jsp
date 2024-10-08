package controller.user2;

import java.io.IOException;
import java.util.List;

import dto.User2DTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.User2Service;

@WebServlet("/user2/list.do")
public class ListController extends HttpServlet{

	private static final long serialVersionUID = -9053547873750234702L;
	
	private User2Service service = User2Service.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 데이터 조회하기
		List<User2DTO> users = service.selectUser2s();
		
		// 데이터 공류 (VIEW에서 데이터를 출력하기 위해 같은 request scope 사용)
		req.setAttribute("users", users);
		
		
		// 뷰 forward
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/user2/list.jsp");
		dispatcher.forward(req, resp);
		
	}
	

}
