package com.farm.util;

public class SQL{
	
	public static final String SELECT_PRODUCT = "select a.*, b.fno, b.product_id, b.oname, b.sname , b.rdate "
			+ "from `product` as a "	
			+ "join `file` as b on a.product_id = b.product_id "
			+ "where a.product_id=?";
	
	public static final String INSERT_PRODUCT = "INSERT INTO product "
			+ "(proname, category, price, points, discount, delivery_cost, stock, pro_img_list, pro_img_inf, pro_img_desc, etc, rdate) "
			+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, now())";
	
	public static final String SELECT_PRODUCTS = "select * from `product`"
												+ "order by product_id desc "
												+ "limit ?, 5";
	public static final String SELECT_PRODUCTS2 = "select * from `product`";
	public static final String SELECT_MAX_PRODUCT_ID ="select MAX(`product_id`) from `product`";	

	
	public static final String DELETE_PRODUCT = "DELETE FROM `product` WHERE product_id = ?";
	
	public static final String SELECT_COUNT_TOTAL_PRO = "select count(*) from `product`";
	
	
	public static final String INSERT_FILE = "insert into file set "
			+ "product_id=?,"
			+ "`oName`=?,"
			+ "`sName`=?,"
			+ "`rdate`=NOW()";

public static final String DELETE_FILE = "DELETE FROM `file` WHERE product_id = ?";
	
	// user
	public static final String SELECT_TERMS = "select * from terms";
	
	public static final String SELECT_COUNT_USER = "SELECT COUNT(*) FROM `user` ";
	public static final String WHERE_UID  = "WHERE `uid`=?";
	public static final String WHERE_NICK = "WHERE `nick`=?";
	public static final String WHERE_EMAIL = "WHERE `email`=?";
	public static final String WHERE_HP = "WHERE `hp`=?";

	public static final String DELETE_USER = "delete from `user` where `uid`=?";
	public static final String UPDATE_USER = "update `user` set "
											+ "`pass`=?,"
											+ "`name`=?,"
											+ "`nick`=?,"
											+ "`email`=?,"
											+ "`hp`=?,"
											+ "`zip`=?,"
											+ "`addr1`=?,"
											+ "`addr2`=? "
											+ "where `uid`=?";
	
	public static final String SELECT_USERS = "SELECT * FROM `user`";
	public static final String SELECT_USER2 = "select * from `user` where `uid`=?";
	public static final String SELECT_USER = "select * from `user` where `uid`=? and `pass`=SHA2(?, 256)";
	public static final String INSERT_USER = "insert into user set "
											+ "`uid`=?,"
											+ "`pass`=SHA2(?, 256),"
											+ "`name`=?,"
											+ "`nick`=?,"
											+ "`email`=?,"
											+ "`hp`=?,"
											+ "`zip`=?,"
											+ "`addr1`=?,"
											+ "`addr2`=?,"
											+ "`regip`=?,"
											+ "`regDate`=NOW()";


	//cart
	
	public static final String SELECT_CART = "SELECT b.category , b.proname, b.pro_img_list , a.quantity, b.discount, b.`points`, a.price, a.prodId  "
			+ "from `cart` AS a "
			+ "JOIN `product` AS b ON a.prodId = b.product_id "
			+ "where `uid` =?";
	
	public static final String INSERT_CART = "INSERT INTO `cart` "
			+ "(`prodId`,`uid`,`quantity`,`discount`,`point`,`price`) "
			+ "values (?,?,?,?,?,?)";
	
	public static final String DELETE_CART= "delete from `cart` where `cartno`=?";
	
	 public static final String SELECT_CART_NO_BY_PROD_ID ="SELECT cartNo FROM Cart WHERE prodId = ?";
	//order
	public static final String SELECT_ORDERS = "select * from `order`";

	public static final String DELETE_ARTICLE= "delete from `article` where `no`=?";
	public static final String SELECT_COUNT_TOTAL= "SELECT COUNT(*) FROM `article`"
													+" where `type` = ?";

	public static final String SELECT_ARTICLE= "SELECT a.*, b.nick FROM `article` AS a "
												+ "JOIN `user` AS b ON a.writer = b.uid "
												+ "WHERE `no`=?";
	
	public static final String SELECT_ARTICLES= "SELECT a.*, b.nick  from `article` AS a "
												+ "JOIN `user` AS b ON a.writer = b.uid "
												+ "where a.type = ? " 
												+ "ORDER BY `no` DESC "
												+ "LIMIT ?, 10";
												
	
	
	public static final String SELECT_MAX_NO = "select MAX(`no`) from `article`";

	public static final String INSERT_ARTICLE = "insert into `article` set "
												+ "`title`=?,"
												+ "`content`=?,"
												+ "`type`=?, "
												+ "`writer`=?,"
												+ "`regip`=?,"
												+ "`rdate`=NOW()";

	
}