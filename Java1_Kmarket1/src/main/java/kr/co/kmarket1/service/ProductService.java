package kr.co.kmarket1.service;

import kr.co.kmarket1.dao.ProductDao;

public enum ProductService {
		
	instance;
	private ProductDao dao = ProductDao.getInstance();
	
	public int selectCountTotal(String prodCate1, String prodCate2) {
		return dao.selectCountTotal(prodCate1, prodCate2);
	}
	public int getLastPageNum(int total) {
		
		int lastPageNum = 0;
		
		if(total % 10 == 0){
			lastPageNum = total / 10;
		}else{
			lastPageNum = total / 10 + 1;
		}
		
		return lastPageNum;
	}
	
	public int[] getPageGroupNum(int currentPage, int lastPageNum) {
		int currentPageGroup = (int)Math.ceil(currentPage / 10.0);
		int pageGroupStart = (currentPageGroup - 1) * 10 + 1;
		int pageGroupEnd = currentPageGroup * 10;
		
		if(pageGroupEnd > lastPageNum){
			pageGroupEnd = lastPageNum;
		}
		
		int[] result = {pageGroupStart, pageGroupEnd};
		
		return result;
	}
	
	public int getPageStartNum(int total, int currentPage) {
		int start = (currentPage - 1) * 10;
		return total - start;
	}
	
	public int getCurrentPage(String pg) {
		int currentPage = 1;
		
		if(pg != null){
			currentPage = Integer.parseInt(pg);	
		}
		
		return currentPage;
	}
	
	public int getStartNum(int currentPage) {
		return (currentPage - 1) * 10;
	}

}
