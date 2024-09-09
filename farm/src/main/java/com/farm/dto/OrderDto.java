package com.farm.dto;

public class OrderDto {
	private int orderNo;
	private String uid;
	private int prodId;
	private int prodPrice;
	private int quantity;
	private int deliveryCost;
	private int prodTotal;
	private int totalAmount;
	private int usedPoint;
	private int payAmount;
	private String orderDate;
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public int getProdId() {
		return prodId;
	}
	public void setProdId(int prodId) {
		this.prodId = prodId;
	}
	public int getProdPrice() {
		return prodPrice;
	}
	public void setProdPrice(int prodPrice) {
		this.prodPrice = prodPrice;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getDeliveryCost() {
		return deliveryCost;
	}
	public void setDeliveryCost(int deliveryCost) {
		this.deliveryCost = deliveryCost;
	}
	public int getProdTotal() {
		return prodTotal;
	}
	public void setProdTotal(int prodTotal) {
		this.prodTotal = prodTotal;
	}
	public int getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}
	public int getUsedPoint() {
		return usedPoint;
	}
	public void setUsedPoint(int usedPoint) {
		this.usedPoint = usedPoint;
	}
	public int getPayAmount() {
		return payAmount;
	}
	public void setPayAmount(int payAmount) {
		this.payAmount = payAmount;
	}

	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	@Override
	public String toString() {
		return "OrderDto [orderNo=" + orderNo + ", uid=" + uid + ", prodId=" + prodId + ", prodPrice=" + prodPrice
				+ ", quantity=" + quantity + ", deliveryCost=" + deliveryCost + ", prodTotal=" + prodTotal
				+ ", totalAmount=" + totalAmount + ", usedPoint=" + usedPoint + ", payAmount=" + payAmount
				+ ", orderDate=" + orderDate + "]";
	}
	
	
}
