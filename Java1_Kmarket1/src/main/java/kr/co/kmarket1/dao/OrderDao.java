package kr.co.kmarket1.dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.kmarket1.db.DBHelper;
import kr.co.kmarket1.db.SQL;
import kr.co.kmarket1.vo.OrderVO;

public class OrderDao extends DBHelper{
	private static OrderDao instance = new OrderDao();
	public static OrderDao getInstance () {
		return instance;
	}
	private OrderDao () {}
	
	// 로거 생성
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public void selectOrder() {}
	public void selectOrders() {}
	public int insertOrder(OrderVO vo) {
		int ordNo = 0;
		try {
			logger.info("insertOrder start...");
			conn = getConnection();
			psmt = conn.prepareStatement(SQL.INSERT_ORDER);
			psmt.setString(1, vo.getOrdUid());
			psmt.setInt(2, vo.getOrdCount());
			psmt.setInt(3, vo.getOrdPrice());
			psmt.setInt(4, vo.getOrdDiscount());
			psmt.setInt(5, vo.getOrdDelivery());
			psmt.setInt(6, vo.getSavePoint());
			psmt.setInt(7, vo.getUsedPoint());
			psmt.setInt(8, vo.getOrdTotPrice());
			psmt.setString(9, vo.getRecipName());
			psmt.setString(10, vo.getRecipHP());
			psmt.setString(11, vo.getRecipZip());
			psmt.setString(12, vo.getRecipAddr1());
			psmt.setString(13, vo.getRecipAddr2());
			psmt.setInt(14, vo.getOrdPayment());
			psmt.setInt(15, vo.getOrdComplete());
			psmt.executeUpdate();
			stmt= conn.createStatement();
			rs = stmt.executeQuery("select MAX(`ordNo`) from `km_product_order`");
			if(rs.next()) {
				ordNo = rs.getInt(1);
			}
			close();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		logger.info("result :"+ordNo);
		return ordNo;
	}
	public void updateOrder() {}
	public void deleteOrder() {}
}
