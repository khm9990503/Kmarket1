package kr.co.kmarket1.dao;

import kr.co.kmarket1.db.DBHelper;

public class CartDao extends DBHelper{
	private static CartDao instance = new CartDao();
	public static CartDao getInstance () {
		return instance;
	}
	public CartDao () {}
	
	public void selectCart() {}
	public void selectCarts() {}
	public void insertCart() {}
	public void updateCart() {}
	public void deleteCart() {}
}
