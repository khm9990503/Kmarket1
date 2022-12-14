package kr.co.kmarket1.service;

import kr.co.kmarket1.dao.ProductDao;

public enum ProductService {
		
	instance;
	private ProductDao dao = ProductDao.getInstance();
	
	public int selectCountTotal() {
		return dao.selectCountTotal();
	}

}
