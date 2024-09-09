package com.farm.dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.farm.dto.FileDto;
import com.farm.dto.ProductDto;
import com.farm.util.DBHelper;
import com.farm.util.SQL;


public class ProductDao extends DBHelper{
	
	private static ProductDao instance = new ProductDao();
	public static ProductDao getInstance() {
		return instance;
	}
	
	private ProductDao() {}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public int insertProduct(ProductDto dto) {
		int no = 0;
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			psmt = conn.prepareStatement(SQL.INSERT_PRODUCT);
			psmt.setString(1, dto.getProname());
			psmt.setString(2, dto.getCategory());
			psmt.setInt(3, dto.getPrice());
			psmt.setInt(4, dto.getPoints());
			psmt.setString(5, dto.getDiscount());
			psmt.setString(6, dto.getDelivery_cost());
			psmt.setInt(7, dto.getStock());
			psmt.setString(8, dto.getPro_img_list());
			psmt.setString(9, dto.getPro_img_inf());
			psmt.setString(10, dto.getPro_img_desc());
			psmt.setString(11, dto.getEtc());
			psmt.executeUpdate();
			
			   // Retrieve the last inserted product ID
            rs = stmt.executeQuery(SQL.SELECT_MAX_PRODUCT_ID);
            if (rs.next()) {
                no = rs.getInt(1);
            }

            logger.info("Inserted product ID: {}", no);

        } catch (Exception e) {
            logger.error("Error inserting product", e);
        } finally {
            closeAll();
        }
        return no;
    }
	
	public int selectCountTotal() {
	    int total = 0;
	    try {
	        conn = getConnection();
	        stmt = conn.createStatement();
	        rs = stmt.executeQuery(SQL.SELECT_COUNT_TOTAL_PRO);
	        if (rs.next()) {
	            total = rs.getInt(1);
	        }
	    } catch (Exception e) {
	        logger.error(e.getMessage());
	    } finally {
	        closeAll();
	    }
	    return total;
	}
	
	public ProductDto selectProduct(String prodid) {
		ProductDto dto = null;
		List<FileDto> files = new ArrayList<FileDto>();
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(SQL.SELECT_PRODUCT);
			psmt.setString(1, prodid);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				if(dto == null) {
					dto = new ProductDto();
						dto.setProname(rs.getString(1));
					 	dto.setProdid(rs.getInt(2));
					 	dto.setCategory(rs.getString(3));
			            dto.setPrice(rs.getInt(4));
			            dto.setPoints(rs.getInt(5));
			            dto.setDiscount(rs.getString(6));
			            dto.setDelivery_cost(rs.getString(7));
			            dto.setStock(rs.getInt(8));
			            dto.setPro_img_list(rs.getString(9));
			            dto.setPro_img_inf(rs.getString(10));
			            dto.setPro_img_desc(rs.getString(11));
			            dto.setEtc(rs.getString(12));
			            dto.setRdate(rs.getString(13));
				}
				
				FileDto fileDto = new FileDto();
				fileDto.setFno(rs.getInt(14));
				fileDto.setProdid(rs.getInt(15));
				fileDto.setoName(rs.getString(16));
				fileDto.setsName(rs.getString(17));
				fileDto.setRdate(rs.getString(18));
				files.add(fileDto);
			}
			dto.setFiles(files);
		} catch (Exception e) {
			logger.error(e.getMessage());
		}finally {
			closeAll();
		}
		
		return dto;
	}
	
	public List<ProductDto> selectProducts(int start) {
		
	    List<ProductDto> products = new ArrayList<>();
	    try {
	        conn = getConnection();
	        psmt = conn.prepareStatement(SQL.SELECT_PRODUCTS);
	        psmt.setInt(1, start); // offset 값 설정
	        
	        rs = psmt.executeQuery();
	        
	        while(rs.next()) {
	            ProductDto dto = new ProductDto();
	            dto.setProname(rs.getString(1));
	            dto.setProdid(rs.getInt(2));
	            dto.setCategory(rs.getString(3));
	            dto.setPrice(rs.getInt(4));
	            dto.setPoints(rs.getInt(5));
	            dto.setDiscount(rs.getString(6));
	            dto.setDelivery_cost(rs.getString(7));
	            dto.setStock(rs.getInt(8));
	            dto.setPro_img_list(rs.getString(9));
	            dto.setPro_img_inf(rs.getString(10));
	            dto.setPro_img_desc(rs.getString(11));
	            dto.setEtc(rs.getString(12));
	            dto.setRdate(rs.getString(13));
	            products.add(dto);
	            
	        }
	        
	    } catch (Exception e) {
	        logger.error(e.getMessage());
	    } finally {
	        closeAll();
	    }
	    return products;
	}
	
	public List<ProductDto> selectProducts2() {
		
	    List<ProductDto> products = new ArrayList<>();
	    
	    try {
	        conn = getConnection();
	        psmt = conn.prepareStatement(SQL.SELECT_PRODUCTS2);
	        
	        rs = psmt.executeQuery();
	        
	        logger.debug("productDao rs : "+ rs);
	        
	        while(rs.next()) {
	            ProductDto dto = new ProductDto();
	            dto.setProname(rs.getString(1));
	            dto.setProdid(rs.getInt(2));
	            dto.setCategory(rs.getString(3));
	            dto.setPrice(rs.getInt(4));
	            dto.setPoints(rs.getInt(5));
	            dto.setDiscount(rs.getString(6));
	            dto.setDelivery_cost(rs.getString(7));
	            dto.setStock(rs.getInt(8));
	            dto.setPro_img_list(rs.getString(9));
	            dto.setPro_img_inf(rs.getString(10));
	            dto.setPro_img_desc(rs.getString(11));
	            dto.setEtc(rs.getString(12));
	            dto.setRdate(rs.getString(13));
	            products.add(dto);
	            
	        }
	        
	    } catch (Exception e) {
	        logger.error(e.getMessage());
	    } finally {
	        closeAll();
	    }
	    
	    logger.debug("productDao : "+products.toString());
	    return products;
	}
	public void updateProduct(ProductDto dto) {
		
	}
	   public void deleteFilesByProductId(int productId) {
	        try {
	            conn = getConnection();
	            psmt = conn.prepareStatement(SQL.DELETE_FILE);
	            psmt.setInt(1, productId);
	            psmt.executeUpdate();
	        } catch (Exception e) {
	            logger.error(e.getMessage());
	        } finally {
	            closeAll();
	        }
	    }

	    // 상품 삭제 시 파일 삭제를 포함한 메서드
	    public void deleteProductWithFiles(int prodId) {
	        deleteFilesByProductId(prodId); // 파일 삭제
	        deleteProduct(prodId); // 상품 삭제
	    }
	
	public void deleteProduct(int prodId) {
	    try {
	        conn = getConnection();
	        psmt = conn.prepareStatement(SQL.DELETE_PRODUCT);
	        psmt.setInt(1, prodId);
	        psmt.executeUpdate();
	    } catch (Exception e) {
	        logger.error(e.getMessage());
	    } finally {
	        closeAll();
	    }
	}
	
	

}