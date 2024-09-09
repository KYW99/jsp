package com.farm.controller.admin.product;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.farm.service.ProductService;

@WebServlet("/admin/product/delete.do")
public class DeleteController extends HttpServlet {
    private static final long serialVersionUID = -2947953406175741099L;
    private ProductService service = ProductService.INSTANCE;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idsParam = req.getParameter("ids");
        if (idsParam != null && !idsParam.isEmpty()) {
            String[] ids = idsParam.split(",");
            for (String idStr : ids) {
                try {
                    int productId = Integer.parseInt(idStr);
                    service.deleteProduct(productId);
                } catch (NumberFormatException e) {
                    // Invalid ID format; handle error if necessary
                }
            }
        }
        resp.sendRedirect("/farm/admin/product/list.do");
    }
}
