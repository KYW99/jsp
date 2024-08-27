package com.farm.service;

import java.util.List;

import com.farm.dao.ProductDao;
import com.farm.dto.PageGroupDto;
import com.farm.dto.ProductDto;


public enum ProductService {
	
	INSTANCE;
	private ProductDao dao = ProductDao.getInstance();
	
	// 전체 게시물 갯수에서 마지막 페이지 번호 구하기
		public int getLastPageNum(int total) {		
			int lastPageNum = 0;
			
			if(total % 10 == 0) {
				lastPageNum = total / 10;
			}else {
				lastPageNum = total / 10 + 1;
			}
			return lastPageNum;
		}
		
		// 페이지 시작번호(limit용)
		public int getStartNum(int currentPage) {
			return (currentPage - 1) * 10;
		}
		
		// 현재 페이지번호 구하기
		public int getCurrentPage(String pg) {
			int currentPage = 1;
			
			if(pg != null) {
				currentPage = Integer.parseInt(pg);
			}
			
			return currentPage;
		}
		
		// 현재 페이지 그룹 구하기 
		public PageGroupDto getCurrentPageGroup(int currentPage, int lastPageNum) {
			
			int currentPageGroup = (int) Math.ceil(currentPage / 10.0);
			int pageGroupStart = (currentPageGroup - 1) * 10 + 1;
			int pageGroupEnd = currentPageGroup * 10;
			
			if(pageGroupEnd > lastPageNum){
				pageGroupEnd = lastPageNum;
			}
			
			return new PageGroupDto(pageGroupStart, pageGroupEnd);
		}
		
		// 페이지 시작번호
		public int getPageStartNum(int total, int currentPage) {
			int start = (currentPage - 1) * 10;
			return total - start;
		}
	
	public int insertProduct(ProductDto dto) {
		return dao.insertProduct(dto);
	}
	
	public int selectCountTotal() {
		return dao.selectCountTotal();
	}
	
	public ProductDto selectProduct(int product_id) {
		return dao.selectProduct(product_id);
	}
	
	public List<ProductDto> selectProducts(int start) {
		return dao.selectProducts(start);
	}
	public void updateProduct(ProductDto dto) {
		
	}
	public void deleteProduct(String proname){
		
	}
	

}
