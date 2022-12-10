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

}
