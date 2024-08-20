package controller.product;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.CustomerDTO;
import dto.ProductDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.CustomerService;
import service.ProductService;

@WebServlet("/customer/register.do")
public class RegisterController extends HttpServlet {

	private static final long serialVersionUID = -2077892778815516348L;

	// 로거생성
	private Logger logger = LoggerFactory.getLogger("RegisterController");

	// 열거타입 싱글톤 객체
	private ProductService service = ProductService.INSTANCE;
		
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/product/register.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 데이터 수신
		String prodNo = req.getParameter("prodNo");
		String prodName   = req.getParameter("prodName");
		String stock     = req.getParameter("stock");
		String price   = req.getParameter("price");
		String company  = req.getParameter("company");
		
		//System.out.println();
		logger.debug("prodNo : " + prodNo);
		logger.debug("prodName : " + prodName);
		logger.debug("company : " + company);
	
		// DTO 생성
		ProductDTO dto = new ProductDTO();
		dto.setProdNo(prodNo);
		dto.setProdName(prodName);
		dto.setStock(stock);
		dto.setPrice(price);
		dto.setCompany(company);
		
		//System.out.println();
		logger.info(dto.toString());
		
		// 서비스 실행
		service.insertProduct(dto);
		
		// 리다이렉트
		resp.sendRedirect("/ch11/product/list.do");
	}
}