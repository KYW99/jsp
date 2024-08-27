package com.farm.controller.admin.product;
import java.io.IOException;
import java.util.List;

import com.farm.dto.PageGroupDto;
import com.farm.dto.ProductDto;
import com.farm.service.ProductService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/admin/product/list.do")
public class ListController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	private ProductService service = ProductService.INSTANCE;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String pg = req.getParameter("pg");
		
		int currentPage = service.getCurrentPage(pg);
		
		int total = service.selectCountTotal();
		
		int lastPageNum = service.getLastPageNum(total);
		
		PageGroupDto pageGroup = service.getCurrentPageGroup(currentPage, lastPageNum);
		
		int start = service.getStartNum(currentPage);
		
		int pageStartNum = service.getPageStartNum(total, currentPage);
		
		List<ProductDto> products = service.selectProducts(start);
		
		req.setAttribute("products", products);
		req.setAttribute("lastPageNum", lastPageNum);
		req.setAttribute("pageGroup", pageGroup);
		req.setAttribute("pageStartNum", pageStartNum);
		req.setAttribute("currentPage", currentPage);
		
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/admin/product/list.jsp");
		dispatcher.forward(req, resp);
		
		
	}
		
	
	
	
	
}