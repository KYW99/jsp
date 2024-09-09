package com.farm.controller.market;


import java.io.IOException;

import org.apache.catalina.User;

import com.farm.dto.UserDto;
import com.farm.service.CartService;
import com.farm.service.ProductService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/market/cartdelete.do")
public class CartDeleteController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private CartService service = CartService.INSTANCE;
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
    	HttpSession session = req.getSession();
    	UserDto sessUser = (UserDto) session.getAttribute("sessUser");
    	String uid = sessUser.getUid();
    	
    	
    	String idsParam = req.getParameter("ids");
    
        
        if (idsParam != null && !idsParam.isEmpty()) {
            String[] prodIds = idsParam.split(",");
            for (String prodIdStr : prodIds) {
                try {
                    int prodId = Integer.parseInt(prodIdStr);
                    // cartNo를 prodId로 조회하여 삭제
                    int cartNo = service.getCartNoByProdId(prodId);
                    if (cartNo != -1) {
                        service.deleteCart(cartNo);
                    }
                } catch (NumberFormatException e) {
                    // Invalid ID format; handle error if necessary
                    e.printStackTrace();  // For debugging purposes
                }
            }
        }
        
        // uid를 쿼리 파라미터로 추가하여 리다이렉트합니다.
        resp.sendRedirect("/farm/market/cart.do?uid="+uid);
    }
}