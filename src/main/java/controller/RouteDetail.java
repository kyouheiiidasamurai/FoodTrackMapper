package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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
import model.FoodTrackDAO;

/**
 * Servlet implementation class AccountRegister
 */
@WebServlet("/RouteDetail")
public class RouteDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CommonUtility cUtility = new CommonUtility();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RouteDetail() {
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
		HttpSession session = request.getSession();
		AccountBeans sessionAb = new AccountBeans();
		FoodTrackDAO ftb = new FoodTrackDAO();
		FoodTrackBeans returnFtb = new FoodTrackBeans();
		List<FoodTrackBeans> returnFtbList = new ArrayList<>();
		if (session != null && session.getAttribute("account") != null) {
			sessionAb = (AccountBeans) session.getAttribute("account");
			returnFtbList = ftb.findFoodTrackByUser(sessionAb.getUser_no());
			request.setAttribute("FoodTrackDetail", returnFtb);
			if ("1".equals(request.getParameter("detailFlg"))) {
				if (sessionAb.getType() == 1) {
					returnFtbList = ftb.findFoodTrackByUser(sessionAb.getUser_no());
					request.setAttribute("returnFtbList", returnFtbList);
				}
				request.setAttribute("AccountDetail", sessionAb);
				request.setAttribute("route", sessionAb.getType());
			} else if ("2".equals(request.getParameter("detailFlg"))) {
				request.setAttribute("route", 3);
				returnFtb = ftb.findFoodTrackByNo(cUtility.checkInt(request.getParameter("foodtrack_no")));
				request.setAttribute("FoodTrackDetail", returnFtb);
			} else {
				request.setAttribute("route", 4);
				returnFtb = ftb.findFoodTrackByNo(cUtility.checkInt(request.getParameter("foodtrack_no")));
				request.setAttribute("FoodTrackDetail", returnFtbList);
			}
			RequestDispatcher rd = request.getRequestDispatcher("views/display.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("views/login.jsp");
			rd.forward(request, response);
		}
	}
}
