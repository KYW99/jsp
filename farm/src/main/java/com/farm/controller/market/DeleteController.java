package com.farm.controller.market;

import java.io.IOException;

import com.farm.service.CartService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/market/delete.do")
public class DeleteController extends HttpServlet{

	private static final long serialVersionUID = -5768556135036604387L;
	private CartService service = CartService.INSTANCE;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String idsParam = req.getParameter("ids");
		
		 if (idsParam != null && !idsParam.isEmpty()) {
	            String[] ids = idsParam.split(",");
	            for (String idStr : ids) {
	                try {
	                    int productId = Integer.parseInt(idStr);
	                    service.deleteCart(productId);
	                } catch (NumberFormatException e) {
	                    // Invalid ID format; handle error if necessary
	                }
	            }
	        }
	}

}
