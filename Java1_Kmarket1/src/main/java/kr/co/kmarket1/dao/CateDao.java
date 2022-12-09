package kr.co.kmarket1.dao;

import kr.co.kmarket1.db.DBHelper;

public class CateDao extends DBHelper{
	private static CateDao instance = new CateDao();
	public static CateDao getInstance () {
		return instance;
	}
	private CateDao (){}
	
	public void selectCate() {}
	public void selectCates() {}
	public void insertCate() {}
	public void updateCate() {}
	public void deleteCate() {}
	
}
