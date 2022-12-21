package kr.co.kmarket1.dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.kmarket1.db.DBHelper;
import kr.co.kmarket1.db.SQL;
import kr.co.kmarket1.vo.OrderItemVO;

public class OrderItemDao extends DBHelper {
	private static OrderItemDao instance = new OrderItemDao();
	public static OrderItemDao getInstance() {
		return instance;
	}
	private OrderItemDao () {}
	
	// 로거 생성
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public void selectOrderItem() {}
	public void selectOrderItems() {}
	public void insertOrderItem(OrderItemVO item) {
		try {
			logger.info("insertOrderItem start...");
			conn = getConnection();
			psmt = conn.prepareStatement(SQL.INSERT_ORDERITEM);
			psmt.setInt(1, item.getOrdNo());
			psmt.setInt(2, item.getProdNo());
			psmt.setInt(3, item.getCount());
			psmt.setInt(4, item.getPrice());
			psmt.setInt(5, item.getDiscount());
			psmt.setInt(6, item.getPoint());
			psmt.setInt(7, item.getDelivery());
			psmt.setInt(8, item.getTotal());
			psmt.executeUpdate();
			close();
		}catch (Exception e) {
			logger.error(e.getMessage());
		}
	}
	
	public void updateOrderItem() {}
	public void deleteOrderItem() {}
}
