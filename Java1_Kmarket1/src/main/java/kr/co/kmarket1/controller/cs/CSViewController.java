package kr.co.kmarket1.controller.cs;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.kmarket1.dao.ArticleDao;
import kr.co.kmarket1.vo.ArticleVO;

@WebServlet("/admin/cs/view.do")
public class CSViewController extends HttpServlet{
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
		String no = req.getParameter("no");
		ArticleVO article = null;
		if(group.equals("notice")) {
			article = ArticleDao.getInstance().selectArticle(no);
		}else if(group.equals("faq")) {
			
		}else if(group.equals("qna")) {
			
		}
		req.setAttribute("article", article);
		req.setAttribute("group", group);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/admin/cs/view.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
