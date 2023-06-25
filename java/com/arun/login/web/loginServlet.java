package com.arun.login.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.arun.login.bean.loginBean;
import com.arun.login.database.loginDao;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/login")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        loginDao loginDao = new loginDao();
		
		String email = request.getParameter("email");
		String confirmpass = request.getParameter("confirmpass");
		loginBean loginBean = new loginBean();
		loginBean.setEmail(email);
		loginBean.setConfirmpass(confirmpass);
		
		if (loginDao.validate(loginBean))
		{
			HttpSession session=request.getSession();
			session.setAttribute("email", email);
			
			RequestDispatcher rd = request.getRequestDispatcher("inbox.jsp");
			rd.forward(request, response);
					
				
			
		}
		else 
		{
		
			response.sendRedirect("loginscript.jsp");
			
		}
	}

}
