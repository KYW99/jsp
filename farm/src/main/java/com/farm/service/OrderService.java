package com.farm.service;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.farm.dao.OrderDao;
import com.farm.dto.OrderDto;

public enum OrderService {

	INSTANCE;
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private OrderDao orderDao = OrderDao.getInstance();

	public void insertOrder() {
		
	}
	
	public OrderDto selectOrder() {
		return null;
	}
	
	public List<OrderDto> selectOrders() {
		return orderDao.selectOrders();
	}
	public void updateOrder(OrderDto dto) {
		
	}
	public void deleteOrder(String proname){
		
	}
	
	
}