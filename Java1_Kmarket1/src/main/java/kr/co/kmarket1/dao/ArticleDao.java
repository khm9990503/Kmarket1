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
	public List<ArticleVO> selectArticlesByGroup(String group,int start) {
		List<ArticleVO> articles = new ArrayList<>();
		try {
			logger.info("selectArticlesByGroup start...");
			conn = getConnection();
			psmt = conn.prepareStatement("select * from `km_article` where `group`=? and `parent`=0 ORDER BY `no` DESC LIMIT ?,10;");
			psmt.setString(1, group);
			psmt.setInt(2, start);
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
	public List<ArticleVO> selectArticlesByGroupIdx(String group, int top) {
		List<ArticleVO> articles = new ArrayList<>();
		try {
			logger.info("selectArticlesByGroup start...");
			conn = getConnection();
			psmt = conn.prepareStatement("select * from `km_article` where `group`=? and `parent`=0 ORDER BY `no` DESC LIMIT ?;");
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
	public List<ArticleVO> selectArticlesByCate(String group, String cate, int top) {
		List<ArticleVO> articles = new ArrayList<>();
		try {
			logger.info("selectArticlesByGroup start...");
			conn = getConnection();
			psmt = conn.prepareStatement("select * from `km_article` where `group`=? AND `cate`=? and `parent`=0 ORDER BY `no` DESC LIMIT ?,10;");
			psmt.setString(1, group);
			psmt.setString(2, cate);
			psmt.setInt(3, top);
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
	// 전체 게시물 카운트(카테고리 O)
	public int selectCountTotal(String cate, String group) {
		int total = 0;
		try {
			logger.info("selectCountTotal start...");
			conn = getConnection();
			psmt = conn.prepareStatement("SELECT COUNT(`no`) FROM `km_article` where `parent`=0 and `cate`=? and `group`=?");
			psmt.setString(1, cate);
			psmt.setString(2, group);
			rs = psmt.executeQuery();
			if(rs.next()) {
				total = rs.getInt(1);
			}
			close();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return total;
	}
	// 전체 게시물 카운트(카테고리 X)
	public int selectCountTotal(String group) {
		int total = 0;
		try {
			logger.info("selectCountTotal start...");
			conn = getConnection();
			psmt = conn.prepareStatement("SELECT COUNT(`no`) FROM `km_article` where `parent`=0 and `group`=?");
			psmt.setString(1, group);
			rs = psmt.executeQuery();
			if(rs.next()) {
				total = rs.getInt(1);
			}
			close();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return total;
	}
	public void insertArticle() {}
	public void updateArticle() {}
	public void deleteArticle() {}
}
