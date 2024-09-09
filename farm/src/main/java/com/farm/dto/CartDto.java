package com.farm.dto;

public class CartDto {
		private int cartNo;
		private int prodId;
		private String uid;
		private int quantity;
		private String discount;
		private int point;
		private int price;
		private String pro_img_list;
		private String pro_img_inf;
		private String pro_img_desc;
		
		
		// 추가
		public String getPro_img_list() {
			return pro_img_list;
		}
		public void setPro_img_list(String pro_img_list) {
			this.pro_img_list = pro_img_list;
		}
		
		public String getPro_img_inf() {
			return pro_img_inf;
		}
		public void setPro_img_inf(String pro_img_inf) {
			this.pro_img_inf = pro_img_inf;
		}
		public String getPro_img_desc() {
			return pro_img_desc;
		}
		public void setPro_img_desc(String pro_img_desc) {
			this.pro_img_desc = pro_img_desc;
		}
		


		//추가
		private String category;
		private String proname;
		public String getCategory() {
			return category;
		}
		public void setCategory(String category) {
			this.category = category;
		}
		public String getProname() {
			return proname;
		}
		public void setProname(String proname) {
			this.proname = proname;
		}
		
		
		public int getCartNo() {
			return cartNo;
		}
		public void setCartNo(int cartNo) {
			this.cartNo = cartNo;
		}
		public int getProdId() {
			return prodId;
		}
		public void setProdId(int prodId) {
			this.prodId = prodId;
		}
		public void setProdId(String prodId) {
			this.prodId = Integer.parseInt( prodId);
		}
		
		public String getUid() {
			return uid;
		}
		public void setUid(String uid) {
			this.uid = uid;
		}
		public int getQuantity() {
			return quantity;
		}
		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}
		public void setQuantity(String quantity) {
			this.quantity = Integer.parseInt( quantity);
		}
		
		public String getDiscount() {
			return discount;
		}
		public void setDiscount(String discount) {
			this.discount = discount;
		}
		public int getPoint() {
			return point;
		}
		public void setPoint(int point) {
			this.point = point;
		}
		public int getPrice() {
			return price;
		}
		public void setPrice(int price) {
			this.price = price;
		}
		public void setPrice(String price) {
			this.price = Integer.parseInt( price);;
		}
		@Override
		public String toString() {
			return "CartDto [cartNo=" + cartNo + ", prodId=" + prodId + ", uid=" + uid + ", quantity=" + quantity
					+ ", discount=" + discount + ", point=" + point + ", price=" + price + ", pro_img_list="
					+ pro_img_list + ", pro_img_inf=" + pro_img_inf + ", pro_img_desc=" + pro_img_desc + ", category="
					+ category + ", proname=" + proname + "]";
		}
		
		
		
}
