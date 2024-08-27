package com.farm.controller.admin.product;

import java.io.IOException;
import java.util.List;

import com.farm.dto.FileDto;
import com.farm.dto.ProductDto;
import com.farm.service.FileService;
import com.farm.service.ProductService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admin/product/register.do")
public class RegisterController extends HttpServlet{

	private static final long serialVersionUID = -8563190909026716341L;
	
	private ProductService service = ProductService.INSTANCE;
	private FileService fileService = FileService.INSTANCE;

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/admin/product/register.jsp");
		dispatcher.forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String proname = req.getParameter("proname");
		String category = req.getParameter("category");
		String price = req.getParameter("price");
		String points = req.getParameter("points");
		String discount = req.getParameter("discount");
		String delivery_cost = req.getParameter("delivery_cost");
		String stock = req.getParameter("stock");
		String pro_img_list = req.getParameter("pro_img_list");
		String pro_img_inf = req.getParameter("pro_img_inf");
		String pro_img_desc = req.getParameter("pro_img_desc");
		String etc = req.getParameter("etc");
		
		
		ProductDto productDto = new ProductDto();
		productDto.setProname(proname);
		productDto.setCategory(category);
		productDto.setPrice(price);
		productDto.setPoints(points);
		productDto.setDiscount(discount);
		productDto.setDelivery_cost(delivery_cost);
		productDto.setStock(stock);
		productDto.setPro_img_list(pro_img_list);
		productDto.setPro_img_inf(pro_img_inf);
		productDto.setPro_img_desc(pro_img_desc);
		productDto.setEtc(etc);
		
		
		int no = service.insertProduct(productDto);
		
		List<FileDto> files = fileService.fileUpload(req);
		
		System.out.println("files.toString()"+files.toString());
		
		for(FileDto fileDto : files) {
			fileDto.setProduct_id(no);
			fileService.insertFile(fileDto);
		}
		
		resp.sendRedirect("/farm/admin/product/list.do");

	}


}
