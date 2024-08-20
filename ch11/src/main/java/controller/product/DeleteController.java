package controller.product;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.CustomerService;
import service.ProductService;

@WebServlet("/product/delete.do")
public class DeleteController extends HttpServlet{

	private static final long serialVersionUID = 2967050350657690900L;
	
	private ProductService service = ProductService.INSTANCE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 데이터 수신
		String prodNo = req.getParameter("prodNo");
		
		// 데이터 삭제
		service.deleteProduct(prodNo);
		
		// 리다이렉트
		resp.sendRedirect("/ch11/product/list.do");
	}
}