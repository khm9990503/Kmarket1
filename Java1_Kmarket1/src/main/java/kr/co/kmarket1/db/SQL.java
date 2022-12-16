package kr.co.kmarket1.db;

public class SQL {
	// sql은 공용으로 사용하기에 수정하시거나 추가하신 sql문은 주석을 달아주세요~////////////////////
	// select , insert , update , delete 순으로 뭉쳐서 작성해주면 보기 편해요.
	
	

	
	
	// Admin\ProductDao
	public static final String INSERT_PRODUCT = "INSERT INTO `km_product` SET "
												+ "`prodCate1` = ?, "
												+ "`prodCate2` = ?, "
												+ "`prodName` = ?, "
												+ "`descript` = ?, "
												+ "`company` = ?, "
												+ "`seller` = ?, "
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
												+ "`bizType` = ?, "
												+ "`origin` = ?, "
												+ "`ip` = ?, "
												+ "`rdate`=NOW()";
	
	
	
	// admin
	public static final String SELECT_ADMIN_PRODUCT_LIST = "SELECT * FROM `km_product`";
	
	// admin 상품 갯수 출력
	public static final String SELECT_LIST_COUNT_TOTAL = "SELECT COUNT(`prodNo`) FROM `km_product`";
												
	
	

	//member
	// terms 불러오기
	public static final String SELECT_TERMS = "SELECT * FROM `km_member_terms`";
	
	// 로그인 
	public static final String SELECT_USER = "select * from `km_member` where `uid`=? and `pass`=SHA2(?,256)";
	
	// 회원가입 - 개인 구매자 (insertMember)
	public static final String INSERT_MEMBER_NORMAL = "INSERT INTO `km_member` SET "
													+ "`uid`=?, "
													+ "`pass`=SHA2(?, 256), "
													+ "`name`=?, "
													+ "`gender`=?, "
													+ "`email`=?, "
													+ "`type`=?, "
													+ "`level`=?, "
													+ "`hp`=?, "
													+ "`zip`=?, "
													+ "`addr1`=?, "
													+ "`addr2`=?, "
													+ "`regip`=?, "
													+ "`locationTerms`=?, "
													+ "`rdate`= NOW()";

	// 회원가입 - 판매자 (insertSellerMember)
	public static final String INSERT_MEMBER_SELLER = "INSERT INTO `km_member` SET " 
													+ "`uid`=?, "
													+ "`pass`=SHA2(?, 256), "
													+ "`name`='판매자', "
													+ "`gender`='3', "
													+ "`hp`=?, "
													+ "`company`=?, "
													+ "`ceo`=?, "
													+ "`bizRegNum`=?, "
													+ "`comRegNum`=?, "
													+ "`tel`=?, "
													+ "`fax`=?, "
													+ "`email`=?, "
													+ "`zip`=?, "
													+ "`addr1`=?, "
													+ "`addr2`=?, "
													+ "`type`=?, "
													+ "`level`=?, "
													+ "`regip`=?, "
													+"`rdate`=NOW()";
													
													
	
	
	// 회원가입 - uid 중복체크 
	public static final String SELECT_COUNT_UID = "select count('uid') from `km_member` where `uid`=?";
	


	//product
	public static final String SELECT_COUNT_TOTAL = "select count(`prodNo`) from `km_product` where `prodCate1`=? and `prodCate2`=?";

	public static final String SELECT_PRODUCTS = "SELECT * FROM `km_product` WHERE `prodCate1`=? AND `prodCate2`=? "
													+ "order by `sold` desc limit ?, 10";
	
	
}
