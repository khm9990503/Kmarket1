package kr.co.kmarket1.dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.kmarket1.db.DBHelper;
import kr.co.kmarket1.db.SQL;
import kr.co.kmarket1.vo.MemberVO;

public class MemberDao extends DBHelper{
	private static MemberDao instance = new MemberDao();
	public static MemberDao getInstance () {
		return instance;
	}
	
	Logger logger = LoggerFactory.getLogger(this.getClass());
	private MemberDao () {}
	
	public void selectMember() {}
	public void selectMembers() {}
	
	// 회원가입 
	public void insertMember(MemberVO vo) {
		try {
			logger.info("insertMember start..");
			conn = getConnection();
			psmt = conn.prepareStatement(SQL.INSERT_MEMBER_NORMAL);
			psmt.setString(1, vo.getUid());
			psmt.setString(2, vo.getPass());
			psmt.setString(3, vo.getName());
			psmt.setInt(4, vo.getGender());
			psmt.setString(5, vo.getEmail());
			psmt.setInt(6, vo.getType());
			psmt.setInt(7, vo.getLevel());
			psmt.setString(8, vo.getHp());
			psmt.setString(9, vo.getZip());
			psmt.setString(10, vo.getAddr1());
			psmt.setString(11, vo.getAddr2());
			psmt.setString(12, vo.getRegip());
			psmt.setInt(13, vo.getLocationTerms());
			
			psmt.executeUpdate();
			close();
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	
	}
	public void updateMember() {}
	public void deleteMember() {}
	
}
