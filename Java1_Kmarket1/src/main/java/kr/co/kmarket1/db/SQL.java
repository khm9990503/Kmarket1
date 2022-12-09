package kr.co.kmarket1.db;

public class SQL {
	// sql은 공용으로 사용하기에 수정하시거나 추가하신 sql문은 주석을 달아주세요~////////////////////
	// select , insert , update , delete 순으로 뭉쳐서 작성해주면 보기 편해요.
	
	
	
	
	// Admin\ProductDao
	public static final String INSERT_PRODUCT = "INSERT INTO `km_product` SET "
												+ "`prodname` = ?, "
												+ "`descript` = ?, "
												+ "`company` = ?, "
												+ "`price` = ?, "
												+ "`discount` = ?, "
												+ "`point` = ?, "
												+ "`stock` = ?, "
												+ "`delivery` = ?, "
												+ "`thumb1` = ?, "
												+ "`thumb2` = ?, "
												+ "`thumb3` = ?, "
												+ "`detail` = ?, "
												+ "`status` = ?, "
												+ "`duty` = ?, "
												+ "`receipt` = ?, "
												+ "`origin` = ?, "
												+ "`biztype` = ?, "
												+ "`ip` = ?, "
												+ "`rdate`=NOW()";
												
	
	
	
	
	
}
