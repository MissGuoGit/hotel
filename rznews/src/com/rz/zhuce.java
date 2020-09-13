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
 * Servlet implementation class zhuce
 */
@WebServlet("/zhuce")
public class zhuce extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public zhuce() {
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
		String password=request.getParameter("password");
		String truename=request.getParameter("truename");
		
		
		DBHelper Dal=new DBHelper();
		//构造sql语句
		String strSql=" insert into tbusers (username,password,truename) values (?,?,?) "; 
		
		//定义参数
		List<Object> params = new ArrayList<Object>();
		params.add(username);
		params.add(password);
		params.add(truename);
		
		//执行添加
		Dal.excuteSql(strSql, params);
		
		//添加成功后提示并跳转。
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().write("<font color='red' font size='800px'>注册成功,请稍等......</font>");
        response.setHeader("Refresh", "3;URL="+request.getContextPath()+"/admin/zhuce.jsp");
	}

}
