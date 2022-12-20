package kr.co.kmarket1.dao;

import java.util.ArrayList;
import java.util.List;

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
	
	public void selectCart() {
		
		try {
			logger.info("selectCart start...");
			conn = getConnection();
			
			
			
		}catch (Exception e) {
			logger.error(e.getMessage());
		}
		
	}
	public List<CartVO> selectCarts() {
		
		List<CartVO> carts = new ArrayList<>();
		
		try {
			logger.info("selectCarts start...");
			conn = getConnection();
			psmt = conn.prepareStatement(SQL.SELECT_CARTS);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				CartVO cart = new CartVO();
				cart.setCartNo(rs.getInt(1));
				cart.setUid(rs.getString(2));
				cart.setProdNo(rs.getInt(3));
				cart.setCount(rs.getInt(4));
				cart.setPrice(rs.getInt(5));
				cart.setDiscount(rs.getInt(6));
				cart.setPoint(rs.getInt(7));
				cart.setDelivery(rs.getInt(8));
				cart.setTotal(rs.getInt(9));
				cart.setRdate(rs.getString(10));
				cart.setProdName(rs.getString(11));
				cart.setThumb1(rs.getString(12));
				cart.setDescript(rs.getString(13));
				cart.setProdCate1(rs.getInt(14));
				cart.setProdCate2(rs.getInt(15));
				
				carts.add(cart);
			}
			close();
		}catch (Exception e) {
			logger.error(e.getMessage());
		}
		return carts;
	}
	
	public void updateCart() {}
	public void deleteCart() {}
}
