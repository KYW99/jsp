package com.farm.controller.market;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.farm.dto.CartDto;
import com.farm.dto.FileDto;
import com.farm.service.CartService;
import com.farm.service.FileService;
import com.farm.service.ProductService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/market/cart.do")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	private CartService cartService = CartService.INSTANCE;
	private FileService fileService = FileService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String uid = req.getParameter("uid");
		List<CartDto> carts = cartService.selectCart(uid);
		
		req.setAttribute("carts", carts);
		logger.debug("carts : "+ carts.toString());
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/market/cart.jsp");
		dispatcher.forward(req, resp);

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String prodId = req.getParameter("prodId");
		String uid = req.getParameter("uid");
		String quantity = req.getParameter("quantity");
		String price = req.getParameter("price");
		
		
		CartDto dto = new CartDto();
		dto.setProdId(prodId);
		dto.setUid(uid);
		dto.setQuantity(quantity);
		dto.setPrice(price);
		
		cartService.insertCart(dto);
		
		
	
	}
}