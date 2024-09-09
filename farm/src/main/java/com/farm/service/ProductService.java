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
			
			if(total % 5 == 0) {
				lastPageNum = total / 5;
			}else {
				lastPageNum = total / 5 + 1;
			}
			return lastPageNum;
		}
		
		// 페이지 시작번호(limit용)
		public int getStartNum(int currentPage) {
			return (currentPage - 1) * 5;
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
		    int currentPageGroup = (int) Math.ceil(currentPage / 5.0);
		    int pageGroupStart = (currentPageGroup - 1) * 5 + 1;
		    int pageGroupEnd = currentPageGroup * 5;
		    
		    if (pageGroupEnd > lastPageNum) {
		        pageGroupEnd = lastPageNum;
		    }
		    
		    return new PageGroupDto(pageGroupStart, pageGroupEnd);
		}

		// 페이지 시작번호
		public int getPageStartNum(int total, int currentPage) {
			int start = (currentPage - 1) * 5;
			return total - start;
		}
	
	public int insertProduct(ProductDto dto) {
		return dao.insertProduct(dto);
	}
	
	public int selectCountTotal() {
		return dao.selectCountTotal();
	}
	
	public ProductDto selectProduct(String prodid) {
		return dao.selectProduct(prodid);
	}
	
	public List<ProductDto> selectProducts(int start) {
		return dao.selectProducts(start);
	}
	public List<ProductDto> selectProducts2() {
		return dao.selectProducts2();
	}
	public void updateProduct(ProductDto dto) {
		
	}
	  public void deleteProduct(int prodid) {
	        dao.deleteProductWithFiles(prodid); // 파일 및 상품 삭제
	    }

}