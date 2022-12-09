package kr.co.kmarket1.dao;

import kr.co.kmarket1.db.DBHelper;

public class OrderDao extends DBHelper{
	private static OrderDao instance = new OrderDao();
	public static OrderDao getInstance () {
		return instance;
	}
	private OrderDao () {}
	
	public void selectOrder() {}
	public void selectOrders() {}
	public void insertOrder() {}
	public void updateOrder() {}
	public void deleteOrder() {}
}
