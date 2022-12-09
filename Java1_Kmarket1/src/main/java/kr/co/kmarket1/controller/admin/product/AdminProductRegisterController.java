package kr.co.kmarket1.controller.admin.product;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.kmarket1.dao.ProductDao;


@WebServlet("/admin/product/register.do")
public class AdminProductRegisterController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	public void init() throws ServletException {
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// view forward
		RequestDispatcher dispatcher = req.getRequestDispatcher("/admin/product/register.jsp");
		dispatcher.forward(req, resp);

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 데이터 수신
/*		String prodCate1 = req.getParameter("category1");
		String prodCate2 = req.getParameter("category2");
		String prodName  = req.getParameter("prodName");
		String descript  = req.getParameter("descript");
		String company   = req.getParameter("company");
		
		
		
		
		
		String seller	= req.getParameter("");
		int price		= req.getParameter("");
		int discount	= req.getParameter("");
		int point		= req.getParameter("");
		int stock		= req.getParameter("");
		int sold		= req.getParameter("");
		int delivery	= req.getParameter("");
		int hit			= req.getParameter("");
		int score		= req.getParameter("");
		int review		= req.getParameter("");
		String thumb1	= req.getParameter("");
		String thumb2	= req.getParameter("");
		String thumb3	= req.getParameter("");
		String detail	= req.getParameter("");
		String status	= req.getParameter("");
		String duty		= req.getParameter("");
		String receipt	= req.getParameter("");
		String bizType	= req.getParameter("");
		String origin	= req.getParameter("");
		String ip		= req.getParameter("");
		
		

		// 데이터베이스 처리
		ProductDao.getInstance().insertUser(vo);
			
		// 리다이렉트
		resp.sendRedirect("/Java1_Kmarket1/admin/product/list.do");
		
*/		
	}
}
