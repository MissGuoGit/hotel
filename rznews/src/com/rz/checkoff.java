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
 * Servlet implementation class checkoff
 */
@WebServlet("/checkoff")
public class checkoff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public checkoff() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
	    String id=request.getParameter("id");
	    String strSql=" update tbroom set isshow='0' where id=? ";	    
	    List<Object> params = new ArrayList<Object>();
		params.add(id);		
		DBHelper Dal=new DBHelper();	
		Dal.excuteSql(strSql, params);    
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
        response.setHeader("Refresh", "1;URL="+request.getContextPath()+"/admin/recommend");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
