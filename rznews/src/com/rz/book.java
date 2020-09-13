package com.rz;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class book
 */
@WebServlet("/book")
public class book extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public book() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8"); 
		 String tbname=request.getParameter("tbname"); 
		 String tbidnumber=request.getParameter("tbidnumber"); 
		 String tbroomnumber=request.getParameter("tbroomnumber"); 
		 String tbcustomnumber=request.getParameter("tbcustomnumber"); 
		 String remarks=request.getParameter("remarks"); 
		 
		
		 DBHelper Dal=new DBHelper();
		 String strSql=" insert into tbcustomer (tbname,tbidnumber,tbroomnumber,tbcustomnumber,remarks) values (?,?,?,?,?) "; 
		 List<Object> params = new ArrayList<Object>();
		 params.add(tbname);
		 params.add(tbidnumber);
		 params.add(tbroomnumber);
		 params.add(tbcustomnumber); 
		 params.add(remarks);
		 Dal.excuteSql(strSql, params);
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("text/html;charset=utf-8");
		 response.getWriter().write("<font color='green'>预订成功，请稍等......</font>");
      response.setHeader("Refresh", "3;URL="+request.getContextPath()+"/index");
	
	}

}
