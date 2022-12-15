package kr.co.kmarket1.service;

import java.util.List;

import kr.co.kmarket1.dao.ProductDao;
import kr.co.kmarket1.vo.Cate1VO;
import kr.co.kmarket1.vo.Cate2VO;
import kr.co.kmarket1.vo.ProductVO;


public enum ProductService {
	INSTANCE;
	
	ProductDao dao = ProductDao.getInstance();

	// product list 
	public List<ProductVO> selectProductList(String cate1, String cate2, int start){
		return dao.selectProductList(cate1, cate2, start);
	}
	
	// category1 list
	public List<Cate1VO> selectCategory1(){
		return dao.selectCategory1();
	}
	
	// category2 list
	public List<Cate2VO> selectCategory2(){
		return dao.selectCategory2();
	}
	

	// 게시물 갯수 cate1, cate2
	public int selectListCountTotal(String cate1, String cate2) { // 중현
		return dao.selectListCountTotal(cate1, cate2);
   }
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































