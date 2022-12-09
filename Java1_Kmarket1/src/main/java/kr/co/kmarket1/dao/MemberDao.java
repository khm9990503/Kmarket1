package kr.co.kmarket1.dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.kmarket1.db.DBHelper;
import kr.co.kmarket1.db.SQL;

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
	public void insertMember() {
		logger.info("insertMember start..");
		conn = getConnection();
		//psmt = conn.prepareStatement(SQL.INSERT_MEMBER_NORMAL);
	}
	public void updateMember() {}
	public void deleteMember() {}
	
}
