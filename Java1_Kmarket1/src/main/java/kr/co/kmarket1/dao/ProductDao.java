package kr.co.kmarket1.dao;

import kr.co.kmarket1.db.DBHelper;

public class ProductDao extends DBHelper{
	private static ProductDao instance = new ProductDao();
	public static ProductDao getInstance () {
		return instance;
	}
	private ProductDao () {}
	
	public void selectProduct () {}
	public void selectProducts () {}
	public void insertProduct () {}
	public void updateProduct () {}
	public void deleteProduct () {}
}
