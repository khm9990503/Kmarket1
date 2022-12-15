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
public class AdminProductListDao extends DBHelper{
	private static AdminProductListDao instance = new AdminProductListDao();
	public static AdminProductListDao getInstance () {
		return instance;
	}
 
	private AdminProductListDao () {}
	
	// 로거 생성
	Logger logger = LoggerFactory.getLogger(this.getClass());
  
	public void selectProduct () {}
	
	
	
	
	
	public void updateProduct () {}
	public void deleteProduct () {}
	
	
	
	// List 상품출력
	public List<ProductVO> selectAdminProductList(String uid) {
		logger.info("selectAdminProductList...");
		List<ProductVO> products = new ArrayList<>();
		
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(SQL.SELECT_ADMIN_PRODUCT_LIST);
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
		} catch(Exception e) {
			logger.error(e.getMessage());
		}
		logger.debug("result :" + products);
		return products;
	}
	
	
	
	// 상품 갯수 출력
		public int selectListCountTotal() {
			int result = 0;
			try {
				logger.info("selectListCountTotal...");
				conn = getConnection();
				stmt = conn.createStatement();
				rs = stmt.executeQuery(SQL.SELECT_LIST_COUNT_TOTAL);
				if(rs.next()) result = rs.getInt(1);
				close();
			} catch (Exception e) {
				logger.error(e.getMessage());
			}
			logger.debug("result : " + result);
			return result;
		} 

	
	
	
	
}



















