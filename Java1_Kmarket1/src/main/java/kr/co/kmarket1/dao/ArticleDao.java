package kr.co.kmarket1.dao;

import kr.co.kmarket1.db.DBHelper;

public class ArticleDao extends DBHelper{
	private static ArticleDao instance = new ArticleDao();
	public static ArticleDao getInstance () {
		return instance;
	}
	public ArticleDao () {}
	
	public void selectArticle() {}
	public void selectArticles() {}
	public void insertArticle() {}
	public void updateArticle() {}
	public void deleteArticle() {}
}
