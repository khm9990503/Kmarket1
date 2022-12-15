package kr.co.kmarket1.dao;



import kr.co.kmarket1.db.DBHelper;
import kr.co.kmarket1.db.SQL;
import kr.co.kmarket1.vo.Cate1VO;
import kr.co.kmarket1.vo.Cate2VO;
import kr.co.kmarket1.vo.ProductVO;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
public class ProductDao extends DBHelper{
	private static ProductDao instance = new ProductDao();
	public static ProductDao getInstance () {
		return instance;
	}
 
	private ProductDao () {}
	
	// 로거 생성
	Logger logger = LoggerFactory.getLogger(this.getClass());
  
	public void selectProduct () {}
	
	// 메인 상품 리스트 작업 ////////////// 시작 12/13 - 홍모
	public List<ProductVO> selectProducts(String prodCate1, String prodCate2, int start) {
		
		List<ProductVO> products = new ArrayList<>();
		
		try {
			logger.info("selectProducts start...");
			conn = getConnection();
			psmt = conn.prepareStatement(SQL.SELECT_PRODUCTS);
			psmt.setString(1, prodCate1);
			psmt.setString(2, prodCate2);
			psmt.setInt(3, start);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				ProductVO product = new ProductVO();
				product.setProdNo(rs.getInt(1));
				product.setProdCate1(rs.getString(2));
				product.setProdCate2(rs.getString(3));
				product.setProdName(rs.getString(4));
				product.setDescript(rs.getString(5));
				product.setCompany(rs.getString(6));
				product.setSeller(rs.getString(7));
				product.setPrice(rs.getInt(8));
				product.setDiscount(rs.getInt(9));
				product.setPoint(rs.getInt(10));
				product.setStock(rs.getInt(11));
				product.setSold(rs.getInt(12));
				product.setDelivery(rs.getInt(13));
				product.setHit(rs.getInt(14));
				product.setScore(rs.getInt(15));
				product.setReview(rs.getInt(16));
				product.setThumb1(rs.getString(17));
				product.setThumb2(rs.getString(18));
				product.setThumb3(rs.getString(19));
				product.setDetail(rs.getString(20));
				product.setStatus(rs.getString(21));
				product.setDuty(rs.getString(22));
				product.setReceipt(rs.getString(23));
				product.setBizType(rs.getString(24));
				product.setOrigin(rs.getString(25));
				product.setIp(rs.getString(26));
			
				products.add(product);
			}
			close();
		}catch (Exception e) {
			logger.error(e.getMessage());
		}
		return products;
	}
	
	// 전체 게시물 카운트
	public int selectCountTotal(String prodCate1, String prodCate2) {
		
		int total = 0;
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(SQL.SELECT_COUNT_TOTAL);
			psmt.setString(1, prodCate1);
			psmt.setString(2, prodCate2);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				total = rs.getInt(1);
			}
			close();
			
		}catch (Exception e) {
			logger.error(e.getMessage());
		}
		return total;		
	}
	
	// 베스트 상품 리스트 TOP5
	public List<ProductVO> selectProductsSold () {
		List<ProductVO> products = new ArrayList<>();
		try {
			logger.info("selectProductsSold start...");
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT `prodNo`,`prodName`,`price`,`discount`,`thumb1` FROM `km_product` ORDER BY `sold` DESC LIMIT 5");
			while(rs.next()) {
				ProductVO product = new ProductVO();
				product.setProdNo(rs.getInt(1));
				product.setProdName(rs.getString(2));
				product.setPrice(rs.getInt(3));
				product.setDiscount(rs.getInt(4));
				product.setThumb1(rs.getString(5));
				
				products.add(product);
			}
			close();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return products;
	}
	// 히트 상품 리스트 TOP8
	public List<ProductVO> selectProductsHit () {
		List<ProductVO> products = new ArrayList<>();
		try {
			logger.info("selectProductsHit start...");
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT `prodNo`,`prodName`,`price`,`discount`,`thumb1`,`delivery` FROM `km_product` ORDER BY `hit` DESC LIMIT 8");
			while(rs.next()) {
				ProductVO product = new ProductVO();
				product.setProdNo(rs.getInt(1));
				product.setProdName(rs.getString(2));
				product.setPrice(rs.getInt(3));
				product.setDiscount(rs.getInt(4));
				product.setThumb1(rs.getString(5));
				product.setDelivery(rs.getInt(6));
				
				products.add(product);
			}
			close();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return products;
	}
	// 추천 상품 리스트 TOP8
	public List<ProductVO> selectProductsScore () {
		List<ProductVO> products = new ArrayList<>();
		try {
			logger.info("selectProductsScore start...");
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT `prodNo`,`prodName`,`price`,`discount`,`thumb1`,`delivery` FROM `km_product` ORDER BY `score` DESC LIMIT 8");
			while(rs.next()) {
				ProductVO product = new ProductVO();
				product.setProdNo(rs.getInt(1));
				product.setProdName(rs.getString(2));
				product.setPrice(rs.getInt(3));
				product.setDiscount(rs.getInt(4));
				product.setThumb1(rs.getString(5));
				product.setDelivery(rs.getInt(6));
				
				products.add(product);
			}
			close();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return products;
	}
	// 최신 상품 리스트 TOP8
	public List<ProductVO> selectProductsLates () {
		List<ProductVO> products = new ArrayList<>();
		try {
			logger.info("selectProductsLates start...");
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT `prodNo`,`prodName`,`price`,`discount`,`thumb1`,`delivery` FROM `km_product` ORDER BY `prodNo` DESC LIMIT 8");
			while(rs.next()) {
				ProductVO product = new ProductVO();
				product.setProdNo(rs.getInt(1));
				product.setProdName(rs.getString(2));
				product.setPrice(rs.getInt(3));
				product.setDiscount(rs.getInt(4));
				product.setThumb1(rs.getString(5));
				product.setDelivery(rs.getInt(6));
				
				products.add(product);
			}
			close();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return products;
	}
	// 할인 상품 리스트 TOP8
	public List<ProductVO> selectProductsDiscount () {
		List<ProductVO> products = new ArrayList<>();
		try {
			logger.info("selectProductsDiscount start...");
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT `prodNo`,`prodName`,`price`,`discount`,`thumb1`,`delivery` FROM `km_product` ORDER BY `discount` DESC LIMIT 8");
			while(rs.next()) {
				ProductVO product = new ProductVO();
				product.setProdNo(rs.getInt(1));
				product.setProdName(rs.getString(2));
				product.setPrice(rs.getInt(3));
				product.setDiscount(rs.getInt(4));
				product.setThumb1(rs.getString(5));
				product.setDelivery(rs.getInt(6));
				
				products.add(product);
			}
			close();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return products;
	}
	// 메인 상품 리스트 작업 ////////////// 끝 - 홍모
	
	
	// RegisterController doPost데이터베이스
	public int insertProduct (ProductVO vo) {
		int result = 0;
		try {
			logger.info("insertProduct...");
			
			conn = getConnection();
			psmt = conn.prepareStatement(SQL.INSERT_PRODUCT);
			psmt.setInt(1, vo.getProdCate1());
			psmt.setInt(2, vo.getProdCate2());
			psmt.setString(3, vo.getProdName());
			psmt.setString(4, vo.getDescript());
			psmt.setString(5, vo.getCompany());
			psmt.setString(6, vo.getSeller());
			psmt.setInt(7, vo.getPrice());
			psmt.setInt(8, vo.getDiscount());
			psmt.setInt(9, vo.getPoint());
			psmt.setInt(10, vo.getStock());
			psmt.setInt(11, vo.getDelivery());
			psmt.setString(12, vo.getThumb1());
			psmt.setString(13, vo.getThumb2());
			psmt.setString(14, vo.getThumb3());
			psmt.setString(15, vo.getDetail());
			psmt.setString(16, vo.getStatus());
			psmt.setString(17, vo.getDuty());
			psmt.setString(18, vo.getReceipt());
			psmt.setString(19, vo.getBizType());
			psmt.setString(20, vo.getOrigin());
			psmt.setString(21, vo.getIp());
			result = psmt.executeUpdate();
			close();
			
		}catch(Exception e) {
			logger.error(e.getMessage());
		}
		return result;
	}
	public void updateProduct () {}
	public void deleteProduct () {}
	
	
	
	
	public List<ProductVO> selectProductList (String cate1, String cate2, int start) {
		logger.info("selectProductList");
		List<ProductVO> products = new ArrayList<>();
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(SQL.SELECT_PRODUCT_LIST);
			psmt.setString(1, cate1);
			psmt.setString(2, cate2);
			psmt.setInt(3, start);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				ProductVO vo = new ProductVO();
				vo.setProdNo(rs.getInt(1));
				vo.setProdCate1(rs.getInt(2));
				vo.setProdCate2(rs.getInt(3));
				vo.setProdName(rs.getString(4));
				vo.setDescript(rs.getString(5));
				vo.setCompany(rs.getString(6));
				vo.setSeller(rs.getString(7));
				vo.setPrice(rs.getInt(8));
				vo.setDiscount(rs.getInt(9));
				vo.setPoint(rs.getInt(10));
				vo.setStock(rs.getInt(11));
				vo.setSold(rs.getInt(12));
				vo.setDelivery(rs.getInt(13));
				vo.setHit(rs.getInt(14));
				vo.setScore(rs.getInt(15));
				vo.setReview(rs.getInt(16));
				vo.setThumb1(rs.getString(17));
				vo.setThumb2(rs.getString(18));
				vo.setThumb3(rs.getString(19));
				vo.setDetail(rs.getString(20));
				vo.setStatus(rs.getString(21));
				vo.setDuty(rs.getString(22));
				vo.setReceipt(rs.getString(23));
				vo.setBizType(rs.getString(24));
				vo.setOrigin(rs.getString(25));
				vo.setIp(rs.getString(26));
				vo.setRdate(rs.getString(27));
				products.add(vo);
			}
			close();
		}catch(Exception e) {
			logger.error(e.getMessage());
		}
		return products;
	}
	
	// 카테고리 1 출력
	public List<Cate1VO> selectCategory1(){
		logger.info("selectCategory1");
		List<Cate1VO> categories = new ArrayList<>();
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(SQL.SELECT_CATEGORY1);
			while(rs.next()) {
				Cate1VO vo = new Cate1VO();
				vo.setCate1(rs.getInt(1));
				vo.setC1Name(rs.getString(2));
				categories.add(vo);
			}
			close();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		logger.debug("categories :" + categories);
		return categories;
	}
	
	// 카테고리 2 출력
	public List<Cate2VO> selectCategory2(){
		logger.info("selectCategory2");
		List<Cate2VO> categories2 = new ArrayList<>();
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(SQL.SELECT_CATEGORY2);
			while(rs.next()) {
				Cate2VO vo = new Cate2VO();
				vo.setCate1(rs.getInt(1));
				vo.setCate2(rs.getInt(2));
				vo.setC2Name(rs.getString(3));
				categories2.add(vo);
			}
			close();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		logger.debug("categories :" + categories2);
		return categories2;
	}
	
	// 상품 갯수 출력
	public int selectListCountTotal(String cate1, String cate2) {
		logger.info("selectListCountTotal");
		int result = 0;
		try {
			conn = getConnection();
			psmt = conn.prepareStatement(SQL.SELECT_LIST_COUNT_TOTAL);
			psmt.setString(1, cate1);
			psmt.setString(2, cate2);
			rs = psmt.executeQuery();
			
			if(rs.next()) result = rs.getInt(1);
			close();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		logger.debug("result :" + result);
		return result;
	}
	
	
	
	
}



















