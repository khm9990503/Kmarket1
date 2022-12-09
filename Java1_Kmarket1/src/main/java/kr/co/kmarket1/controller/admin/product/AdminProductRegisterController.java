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

import com.google.gson.Gson;

import kr.co.kmarket1.dao.CateDao;
import kr.co.kmarket1.vo.Cate1VO;
import kr.co.kmarket1.vo.Cate2VO;


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
		// 수신
		String cate1 = req.getParameter("cate1");
		
		// cate2 리스트 불러오기 - 구홍모 12/09
		List<Cate2VO> cate2s = CateDao.getInstance().selectCates_2(cate1);
		// cate2 GSON 출력 - 리스트는 gson , 단순String은 json
		Gson gson = new Gson();
		String jsonData = gson.toJson(cate2s);
		
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		out.print(jsonData);
	}
}
