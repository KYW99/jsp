
package com.farm.service;

import java.util.List;

import com.farm.dao.ArticleDao;

import com.farm.dto.ArticleDto;
import com.farm.dto.PageGroupDto;


public enum ArticleService {

	INSTANCE;
	
	private ArticleDao dao = ArticleDao.getInstance();
	
	// 게시판 마지막 페이지 번호 구하기
	public int getLastPageNum(int total) {
		
		int lastPage = 0;
		
		if(total % 10 == 0) {
			lastPage = total / 10;
		}else {
			lastPage = total / 10 +1;
			
		}
		return lastPage;
		
	}
	// 페이지 시작번호 SQL LIMIT에 쓰는 용 
	public int getStartNum(int currentPage) {
		
		return (currentPage - 1) * 10;
	}
	// 현재 페이지번호 구하기
	public int getCurrentPage(String pg){
		
		int currentPage = 1;
	
		if(pg != null) {
			currentPage = Integer.parseInt(pg);
		}
		
		return currentPage;
	}
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
	public int insertArticle(ArticleDto dto) {
		return dao.insertArticle(dto);
	}
	public int selectCountTotal() {
		return dao.selectCountTotal();
	}
	public ArticleDto selectArticle(String no) {
		return dao.selectArticle(no);
	}
	
	public List<ArticleDto> selectArticles(int start) {
		return dao.selectArticles(start);
	}
	
	public void updateArticle(ArticleDto dto) {
		dao.updateArticle(dto);
	}	
	
	public void deleteArticle(String no) {
		dao.deleteArticle(no);
	}




}
