package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Action;
import service.ActionForward;
import service.admin.AdminListAction;

/**
 * Servlet implementation class AdminController
 */
@WebServlet("*.sw")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		System.out.println("requestURI:" + requestURI);
		System.out.println("contextPath:" + contextPath);
		System.out.println("command:" + command);
		
		Action action = null;
		ActionForward forward = null;
		
		// 서블릿
		//회원 목록
		if (command.equals("/AdminListAction.sw")) {
			try {
				action = new AdminListAction();
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		
		// 포워딩
		if(forward != null) {
			if(forward.isRedirect()) {	// redirect 방식
				response.sendRedirect(forward.getPath());
			} else {					// dispatcher 방식
				RequestDispatcher dispatcher = 
							request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);	// 포워딩
			}
		}
		
	} // doProcess end

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("get");
		
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("post");
		
		doProcess(request, response);
	}

}
