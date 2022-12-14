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

import com.google.gson.JsonObject;

import kr.co.kmarket1.dao.AdminProductListDao;



@WebServlet("/admin/product/delete.do")
public class AdminProductDeleteController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	public void init() throws ServletException {

	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String prodNo = req.getParameter("prodNo");
		AdminProductListDao.getInstance().deleteAdminList(prodNo);
		
		resp.sendRedirect("/Java1_Kmarket1/admin/product/list.do");
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String prodNo[] = req.getParameterValues("prodNo[]");
		AdminProductListDao dao = AdminProductListDao.getInstance();
		int result = 0;
		for(int i = 0; i<prodNo.length; i++) {
			result = dao.selectdelete(prodNo[i]);
		}
		
		JsonObject json = new JsonObject();
		json.addProperty("result", result);
		PrintWriter writer = resp.getWriter();
		writer.print(json.toString());
		
	}

}

