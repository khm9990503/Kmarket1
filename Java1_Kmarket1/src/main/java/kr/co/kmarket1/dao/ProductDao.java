package kr.co.kmarket1.dao;



import kr.co.kmarket1.db.DBHelper;
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
	public void insertProduct () {}
	public void updateProduct () {}
	public void deleteProduct () {}

}
