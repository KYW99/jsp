package com.farm.controller.admin.order;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.farm.dto.OrderDto;
import com.farm.service.OrderService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admin/order/order.do")
public class OrderController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private OrderService service = OrderService.INSTANCE;
	Logger logger = LoggerFactory.getLogger(this.getClass());

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<OrderDto> orders= service.selectOrders();
		
		logger.debug("orders: "+orders.toString());
		
		req.setAttribute("orders", orders);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/admin/order/orderList.jsp");
		dispatcher.forward(req, resp);
	}
}
