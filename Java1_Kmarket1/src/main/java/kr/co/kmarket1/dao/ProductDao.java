package kr.co.kmarket1.dao;



import kr.co.kmarket1.db.DBHelper;
import kr.co.kmarket1.db.SQL;
import kr.co.kmarket1.vo.ProductVO;

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
	public void selectProducts () {}
	// RegisterController doPost데이터베이스
	public void insertProduct (ProductVO vo) {
		try {
			logger.info("insertProduct...");
			
			conn = getConnection();
			psmt = conn.prepareStatement(SQL.INSERT_PRODUCT);
			psmt.setString(1, vo.getProdName());
			psmt.setString(2, vo.getDescript());
			psmt.setString(3, vo.getCompany());
			psmt.setInt(4, vo.getPrice());
			psmt.setInt(5, vo.getDiscount());
			psmt.setInt(6, vo.getPoint());
			psmt.setInt(7, vo.getStock());
			psmt.setInt(8, vo.getDelivery());
			psmt.setString(9, vo.getThumb1());
			psmt.setString(10, vo.getThumb2());
			psmt.setString(11, vo.getThumb3());
			psmt.setString(12, vo.getDetail());
			psmt.setString(13, vo.getStatus());
			psmt.setString(14, vo.getDuty());
			psmt.setString(15, vo.getReceipt());
			psmt.setString(16, vo.getOrigin());
			psmt.setString(17, vo.getBizType());
			psmt.setString(18, vo.getIp());
			psmt.executeUpdate();
			close();
			
		}catch(Exception e) {
			logger.error(e.getMessage());
		}
	}
	public void updateProduct () {}
	public void deleteProduct () {}

}
