package kr.co.kmarket1.controller.product;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.kmarket1.dao.CartDao;
import kr.co.kmarket1.dao.CateDao;
import kr.co.kmarket1.dao.ProductDao;
import kr.co.kmarket1.vo.CartVO;
import kr.co.kmarket1.vo.Cate1VO;
import kr.co.kmarket1.vo.Cate2VO;
import kr.co.kmarket1.vo.ProductVO;

@WebServlet("/product/order.do")
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	public void init() throws ServletException {
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		// cate1,2 리스트 불러오기 - 구홍모 12/11
		CateDao CD = CateDao.getInstance();
		List<Cate1VO> cate1s = CD.selectCates_1();
		List<Cate2VO> cate2s = CD.selectCates_2();
		req.setAttribute("cate1s", cate1s);
		req.setAttribute("cate2s", cate2s);
		
		// 상품번호 수신 - 구홍모 
		String cartNo = req.getParameter("cartNo");
		String prodNo = req.getParameter("prodNo");
		String count = req.getParameter("count");
		
		List<CartVO> cartList = null;
		ProductVO product = null;
		if(prodNo == null) {
			cartList = CartDao.getInstance().selectCartsByCartNo(cartNo);
		}else {
			product = ProductDao.getInstance().selectProduct(prodNo);
		}
		
		req.setAttribute("cartList", cartList);
		req.setAttribute("product", product);
		req.setAttribute("count", count);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/product/order.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	}
}
