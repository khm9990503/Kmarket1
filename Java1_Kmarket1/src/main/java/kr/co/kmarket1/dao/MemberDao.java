package kr.co.kmarket1.dao;

import kr.co.kmarket1.db.DBHelper;

public class MemberDao extends DBHelper{
	private static MemberDao instance = new MemberDao();
	public static MemberDao getInstance () {
		return instance;
	}
	private MemberDao () {}
	
	public void selectMember() {}
	public void selectMembers() {}
	public void insertMember() {}
	public void updateMember() {}
	public void deleteMember() {}
	
}
