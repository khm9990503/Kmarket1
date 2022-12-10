package kr.co.kmarket1.db;

public class SQL {
	// sql은 공용으로 사용하기에 수정하시거나 추가하신 sql문은 주석을 달아주세요~////////////////////
	// select , insert , update , delete 순으로 뭉쳐서 작성해주면 보기 편해요.
	
	
	//member
	// terms 불러오기
	public static final String SELECT_TERMS = "SELECT * FROM `km_member_terms`";
	
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
													
	
	
	
}
