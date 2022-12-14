package kr.co.kmarket1.dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.kmarket1.db.DBHelper;
import kr.co.kmarket1.vo.ArticleVO;

public class ArticleDao extends DBHelper{
	private static ArticleDao instance = new ArticleDao();
	public static ArticleDao getInstance () {
		return instance;
	}
	public ArticleDao () {}
	// 로거 생성
	Logger logger = LoggerFactory.getLogger(this.getClass());
	// 기본 CRUD
	public void selectArticle() {}
	public List<ArticleVO> selectArticlesByGroup(String group, int top) {
		List<ArticleVO> articles = new ArrayList<>();
		try {
			logger.info("selectArticlesByGroup start...");
			conn = getConnection();
			psmt = conn.prepareStatement("select * from `km_article` where `group`=? ORDER BY `no` DESC LIMIT ?;");
			psmt.setString(1, group);
			psmt.setInt(2, top);
			rs = psmt.executeQuery();
			while(rs.next()) {
				ArticleVO article = new ArticleVO();
				article.setNo(rs.getInt(1));
				article.setGroup(rs.getString(4));
				article.setCate(rs.getString(5));
				article.setTitle(rs.getString(7));
				article.setUid(rs.getString(11).substring(0,3));
				article.setRdate(rs.getString(13).substring(2,10));
				
				articles.add(article);
			}
			close();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return articles;
	}
	public void insertArticle() {}
	public void updateArticle() {}
	public void deleteArticle() {}
}
