package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.AccountBeans;
import beans.FoodTrackBeans;
import model.AccountDAO;
import model.FoodTrackDAO;

/**
 * Servlet implementation class AccountRegister
 */
@WebServlet("/PointRegister")
public class PointRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PointRegister() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int route = Integer.parseInt(request.getParameter("route"));
		request.setAttribute("route", route);

		HttpSession session = request.getSession();
		AccountBeans ab = new AccountBeans();
		FoodTrackBeans ftb = new FoodTrackBeans();

		switch (route) {
		// ユーザー新規登録
		case 1:
			break;
		// フードトラック新規登録
		case 2:
			break;
		// ユーザー情報修正
		case 3:
			AccountDAO ad = new AccountDAO();
			AccountBeans returnAb = ad.getAccount((int) session.getAttribute("userNo"));
			request.setAttribute("AccountDetail", returnAb);
			break;
		// フードトラック情報修正
		case 4:
			FoodTrackDAO ftd = new FoodTrackDAO();
			FoodTrackBeans returnFtb = ftd.findFoodTrackByNo((int) session.getAttribute("foodTrackNo"));
			request.setAttribute("FoodTrackDetail", returnFtb);
			break;
		default:
			break;
		}

		RequestDispatcher rd = request.getRequestDispatcher("jsp/register.jsp");
		rd.forward(request, response);
	}
}
