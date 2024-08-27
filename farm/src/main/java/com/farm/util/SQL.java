package com.farm.util;

public class SQL{
	
	public static final String INSERT_PRODUCT = "INSERT INTO product "
												+ "(proname, category, price, points, discount, delivery_cost, stock, pro_img_list, pro_img_inf, pro_img_desc, etc) "
												+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	public static final String SELECT_COUNT_TOTAL = "select count(*) from `product`";
	
	
	public static final String SELECT_PRODUCT = "select * from `product` as a"
												+ "left join `file` as b on a.product_id = b.product_id"
												+ "where `product_id`=?";
	public static final String SELECT_PRODUCTS = "SELECT a.*, b.product_id "
												+ "FROM `product` AS a "
												+ "JOIN `file` AS b ON a.product_id = b.product_id "
												+ "ORDER BY a.product_id DESC "
												+ "LIMIT ?, 5";
	
	
	
	
	public static final String INSERT_FILE = "insert into file set "
											+ "product_id=?,"
											+ "`oName`=?,"
											+ "`sName`=?,"
											+ "`rdate`=NOW()";
	public static final String SELECT_MAX_PRODUCT_ID ="select MAX(`product_id`) from `product`";			
}