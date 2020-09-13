package com.rz;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.rmi.runtime.NewThreadAction;

/**
 * Servlet implementation class uiassessadd
 */
@WebServlet("/uiassessadd")
public class uiassessadd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public uiassessadd() {
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
		 String username=request.getParameter("username"); 
		 String contents=request.getParameter("contents"); 
		 String tel=request.getParameter("tel"); 
		 String isshow="0"; 
		 SimpleDateFormat dt=new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
		 String creattime=dt.format(new Date()) ;
		 String detil=request.getParameter("detil");
		 DBHelper Dal=new DBHelper();
		 String strSql=" insert into tbassess (username,contents,tel,isshow,creattime,detil) values (?,?,?,?,?,?) "; 
		 List<Object> params = new ArrayList<Object>();
		 params.add(username);
		 params.add(contents);
		 params.add(tel);
		 params.add(isshow);
		 params.add(creattime);
		 params.add(detil);
		 Dal.excuteSql(strSql, params);
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("text/html;charset=utf-8");
		 response.getWriter().write("<font color='green'>感谢您的评价！！！</font>");
        response.setHeader("Refresh", "3;URL="+request.getContextPath()+"/assessadd.jsp");
	}

}
