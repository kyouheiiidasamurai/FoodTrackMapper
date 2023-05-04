package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Utility.CommonUtility;
import beans.AccountBeans;
import beans.FoodTrackBeans;
import model.AccountDAO;
import model.FoodTrackDAO;

/**
 * Servlet implementation class AccountRegister
 */
@WebServlet("/RouteRegister")
public class RouteRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CommonUtility cUtility = new CommonUtility();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RouteRegister() {
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
		int route = cUtility.checkInt(request.getParameter("route"));
		request.setAttribute("route", route);

		HttpSession session = request.getSession();
		AccountBeans ab = new AccountBeans();
		FoodTrackBeans ftb = new FoodTrackBeans();
		FoodTrackDAO ftd = new FoodTrackDAO();
		AccountDAO ad = new AccountDAO();
		FoodTrackBeans returnFtb = new FoodTrackBeans();

		switch (route) {
		// ユーザー新規登録
		case 1:
			break;
		// フードトラック新規登録
		case 2:
			break;
		// ユーザー情報修正
		case 3:
			AccountBeans returnAb = ad.getAccount(cUtility.checkInt(request.getParameter("user_no")));
			request.setAttribute("AccountDetail", returnAb);
			break;
		// フードトラック情報修正
		case 4:
			returnFtb = ftd.findFoodTrackByNo(cUtility.checkInt(request.getParameter("foodtrack_no")));
			request.setAttribute("FoodTrackDetail", returnFtb);
			break;
		// レビュー登録機能
		case 5:
			returnFtb = ftd.findFoodTrackByNo(cUtility.checkInt(request.getParameter("foodtrack_no")));
			request.setAttribute("FoodTrackDetail", returnFtb);
			break;
		default:
			break;
		}

		RequestDispatcher rd = request.getRequestDispatcher("views/register.jsp");
		rd.forward(request, response);
	}
}
