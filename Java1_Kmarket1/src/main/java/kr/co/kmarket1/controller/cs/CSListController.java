package kr.co.kmarket1.controller.cs;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.kmarket1.dao.ArticleDao;
import kr.co.kmarket1.vo.ArticleVO;

@WebServlet("/admin/cs/list.do")
public class CSListController extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void init() throws ServletException {
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String group = req.getParameter("group");
		String cate = req.getParameter("cate");
		String pg = req.getParameter("pg");
		int start = 0;
		int currentPage = 1;
		int currentPageGroup = 1;
		int total = 0;
		int pageStartNum = 0;
		int lastPageNum = 0;
		if(pg!=null){
			currentPage = Integer.parseInt(pg);
		}
		
		start = (currentPage - 1) * 10;
		
		// 전체 게시물 갯수
		if(cate==null) {
			total = ArticleDao.getInstance().selectCountTotal(group);
		}else {
			total = ArticleDao.getInstance().selectCountTotal(cate, group);
		}
		
		
		// 시작 페이지 번호
		pageStartNum = total - start;
		
		// 마지막 페이지 번호
		if(total % 10 == 0){
			lastPageNum = total / 10;
		}else{
			lastPageNum = total / 10 + 1;
		}
		
		// 페이지 그룹 start, end 번호
		currentPageGroup = (int)Math.ceil(currentPage / 10.0);
		int pageGroupStart = (currentPageGroup - 1) * 10 + 1;
		int pageGroupEnd = currentPageGroup * 10;
		if(pageGroupEnd > lastPageNum){
			pageGroupEnd = lastPageNum;
		}
		int[] result = {pageGroupStart, pageGroupEnd};
		
		List<ArticleVO> articles = null;
		
		if(group == null) {
			group = "notice";
		}
		if(group.equals("notice")) {
			if(cate==null) {
				total = ArticleDao.getInstance().selectCountTotal(group);
			}else {
				total = ArticleDao.getInstance().selectCountTotal(cate, group);
			}
			if(cate==null) {
				articles = ArticleDao.getInstance().selectArticlesByGroup(group, start);
			}else {
				articles = ArticleDao.getInstance().selectArticlesByCate(group, cate, start);
			}
		}else if(group.equals("faq")) {
			
		}else if(group.equals("qna")) {
			
		}
		
		req.setAttribute("cate", cate);
		req.setAttribute("pg", pg);
		req.setAttribute("lastPageNum", lastPageNum);
		req.setAttribute("currentPage", currentPage);
		req.setAttribute("currentPageGroup", currentPageGroup);
		req.setAttribute("pageGroupStart", result[0]);
		req.setAttribute("pageGroupEnd", result[1]);
		req.setAttribute("pageStartNum", pageStartNum);
		req.setAttribute("articles", articles);
		req.setAttribute("group", group);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/admin/cs/list.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
