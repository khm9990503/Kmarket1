package kr.co.kmarket1.dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.kmarket1.db.DBHelper;
import kr.co.kmarket1.db.SQL;
import kr.co.kmarket1.vo.CartVO;

public class CartDao extends DBHelper{
	private static CartDao instance = new CartDao();
	public static CartDao getInstance () {
		return instance;
	}
	public CartDao () {}
	
	// 로거 생성
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public void selectCart() {}
	public void selectCarts() {}
	
	public void insertCart(CartVO cart) {
		try {
			logger.info("insertCart start...");
			conn = getConnection();
			psmt = conn.prepareStatement(SQL.INSERT_CART);
			psmt.setString(1, cart.getUid());
			psmt.setInt(2, cart.getProdNo());
			psmt.setInt(3, cart.getCount());
			psmt.setInt(4, cart.getPrice());
			psmt.setInt(5, cart.getDiscount());
			psmt.setInt(6, cart.getPoint());
			psmt.setInt(7, cart.getDelivery());
			psmt.setInt(8, cart.getTotal());
			psmt.executeUpdate();
			close();
		}catch (Exception e) {
			logger.error(e.getMessage());
		}
	}
	public void updateCart() {}
	public void deleteCart() {}
}
