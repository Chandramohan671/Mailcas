package com.compose;


import java.io.IOException;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.arun.login.database.loginDao;



/**
 * Servlet implementation class ComposeServlet
 */
@WebServlet("/msg")
public class ComposeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComposeServlet() {
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
		
		
		String recieverid=request.getParameter("mail");
		String subject=request.getParameter("subject");
		String composemail=request.getParameter("description");
		String file=request.getParameter("file");
     

		ComposeBean composebean=new ComposeBean(recieverid,subject,composemail,file);
		
		loginDao composeDao=new loginDao();
		String result=composeDao.insert(composebean);
		
		System.out.println("compose");
		
		if(result=="Data entered successfully")
		{
			response.sendRedirect("composescript.jsp");
		}
		
	}

}
