package kr.co.kmarket1.dao;

import kr.co.kmarket1.db.DBHelper;

public class TermsDao extends DBHelper{
	private static TermsDao instance = new TermsDao();
	public static TermsDao getInstance () {
		return instance;
	}
	private TermsDao () {}
	
	public void selectTerms () {}
	public void insertTerms () {}
	public void updateTerms () {}
	public void deleteTerms () {}
}
