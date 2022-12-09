package kr.co.kmarket1.controller.admin.product;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import kr.co.kmarket1.dao.ProductDao;
import kr.co.kmarket1.vo.ProductVO;
import kr.co.kmarket1.dao.CateDao;
import kr.co.kmarket1.vo.Cate1VO;



@WebServlet("/admin/product/register.do")
public class AdminProductRegisterController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	public void init() throws ServletException {
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// cate1 리스트 불러오기 - 구홍모 12/09
		List<Cate1VO> cate1s = CateDao.getInstance().selectCates_1();
		req.setAttribute("cate1s", cate1s);
		
		// view forward
		RequestDispatcher dispatcher = req.getRequestDispatcher("/admin/product/register.jsp");
		dispatcher.forward(req, resp);

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		// 데이터 수신
		String prodCate1 = req.getParameter("category1");
		String prodCate2 = req.getParameter("category2");
		String prodName  = req.getParameter("prodName");
		String descript  = req.getParameter("descript");
		String company	 = req.getParameter("company");
		String price	 = req.getParameter("price");
		String discount  = req.getParameter("discount");
		String point	 = req.getParameter("point");
		String stock	 = req.getParameter("stock");
		String delivery	 = req.getParameter("delivery");
		String thumb1	= req.getParameter("thumb1");
		String thumb2	= req.getParameter("thumb2");
		String thumb3	= req.getParameter("thumb3");
		String detail	= req.getParameter("detail");
		String status	= req.getParameter("status");
		String duty		= req.getParameter("duty");
		String receipt	= req.getParameter("receipt");
		String origin	= req.getParameter("origin");
		String bizType	= req.getParameter("bizType");
		String ip		= req.getRemoteAddr();
		
		// VO 데이터 생성
		ProductVO vo = new ProductVO();
		vo.setProdName(prodName);
		vo.setDescript(descript);
		vo.setCompany(company);
		vo.setPrice(price);
		vo.setDiscount(discount);
		vo.setPoint(point);
		vo.setStock(stock);
		vo.setDelivery(delivery);
		vo.setThumb1(thumb1);
		vo.setThumb2(thumb2);
		vo.setThumb3(thumb3);
		vo.setDetail(detail);
		vo.setStatus(status);
		vo.setDuty(duty);
		vo.setReceipt(receipt);
		vo.setOrigin(origin);
		vo.setBizType(bizType);
		vo.setIp(ip);

		// 데이터베이스 처리
		ProductDao.getInstance().insertProduct(vo);
			
		// 리다이렉트
		resp.sendRedirect("/Java1_Kmarket1/admin/product/list.do");

	}
}
