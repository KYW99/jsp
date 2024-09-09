
package com.farm.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.farm.dto.ArticleDto;
import com.farm.util.DBHelper;
import com.farm.util.SQL;

public class ArticleDao extends DBHelper {

	private static ArticleDao instance = new ArticleDao();
	public static ArticleDao getInstance() {
		return instance;
	}
	private ArticleDao() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public int insertArticle(ArticleDto dto) {
		int no = 0;
		
		try {
			conn = getConnection();
			conn.setAutoCommit(false);
			
			stmt = conn.createStatement();
			psmt = conn.prepareStatement(SQL.INSERT_ARTICLE_GROW);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getWriter());
			psmt.setString(4, dto.getRegip());
			psmt.executeUpdate();
			
			rs = stmt.executeQuery(SQL.SELECT_MAX_NO_GROW);
			if(rs.next()) {
				no = rs.getInt(1);
			}
			conn.commit();
			
			
		}catch (Exception e) {
			logger.error(e.getMessage());
			 
			// commmit 하기 전 에러가 발생하면 롤백해야므로
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			
		}finally {
			closeAll();
		}
		
		return no;
	}
	public int selectCountTotal() {
		int total = 0;
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(SQL.SELECT_COUNT_TOTAL_GROW);
			if(rs.next()) {
				total = rs.getInt(1);
			}
		}catch (Exception e) {
			logger.error(e.getMessage());
		}finally {
			closeAll();
		}
		return total;
	}
	
	
	public ArticleDto selectArticle(String no) {
		
		ArticleDto dto = null;
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(SQL.SELECT_ARTICLE_GROW);
			psmt.setString(1,no);
			
			rs = psmt.executeQuery();
			 
		
			while(rs.next()) {
				
				if(dto == null) {
					dto = new ArticleDto();
					dto.setNo(rs.getInt(1));
					dto.setCate(rs.getString(2));
					dto.setTitle(rs.getString(3));
					dto.setContent(rs.getString(4));
					dto.setComment(rs.getInt(5));
					dto.setFile(rs.getInt(6));
					dto.setHit(rs.getInt(7));
					dto.setWriter(rs.getString(8));
					dto.setRegip(rs.getString(9));
					dto.setRdate(rs.getString(10));
				}	
			}
						
		}catch(Exception e) {
			
			logger.error(e.getMessage());
			
		}finally {
			closeAll();
		}
		
		return dto;
	}
	// 첫교시 Let's 기릿!
	public List<ArticleDto> selectArticles(int start) {
		
		List<ArticleDto> articles = new ArrayList<>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(SQL.SELECT_ARTICLES_GROW);
			psmt.setInt(1, start);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				ArticleDto dto = new ArticleDto();
				dto.setNo(rs.getInt(1));
				dto.setCate(rs.getString(2));
				dto.setTitle(rs.getString(3));
				dto.setContent(rs.getString(4));
				dto.setComment(rs.getInt(5));
				dto.setFile(rs.getInt(6));
				dto.setHit(rs.getInt(7));
				dto.setWriter(rs.getString(8));
				dto.setRegip(rs.getString(9));
				dto.setRdateSubString(rs.getString(10));
				dto.setNick(rs.getString(11));
				
				articles.add(dto);
			}

			
		}catch(Exception e) {
			logger.error(e.getMessage());
			
		}finally {
			// try 속에 있을 때 : try내에서 에러가 나면 catch로 빠지면서 이 함수 호출 안됨 그를 방지하기 위해 finally에 넣어줌
			closeAll();
		}

		return articles;
	
	}
	
	public void updateArticle(ArticleDto dto) {
		
	}	
	
	public void deleteArticle(String no) {
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(SQL.DELETE_ARTICLE_GROW);
			psmt.setString(1, no);
			psmt.executeUpdate();	
			
		}catch(Exception e) {
			
			logger.error(e.getMessage());
			
		}finally {
			
			closeAll();
		}
		
}
}