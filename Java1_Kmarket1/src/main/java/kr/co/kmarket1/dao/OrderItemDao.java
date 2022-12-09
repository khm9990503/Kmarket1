package kr.co.kmarket1.dao;

import kr.co.kmarket1.db.DBHelper;

public class OrderItemDao extends DBHelper {
	private static OrderItemDao instance = new OrderItemDao();
	public static OrderItemDao getInstance() {
		return instance;
	}
	private OrderItemDao () {}
	
	public void selectOrderItem() {}
	public void selectOrderItems() {}
	public void insertOrderItem() {}
	public void updateOrderItem() {}
	public void deleteOrderItem() {}
}
