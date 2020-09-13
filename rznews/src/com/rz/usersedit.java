package com.rz;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class usersedit
 */
@WebServlet("/usersedit")
public class usersedit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public usersedit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//把旧的数据查询出来 
		//接收到要修改的记录的id
		 String id=request.getParameter("id"); 
		 DBHelper Dal=new DBHelper();
		 
		 String strSql=" select * from tbusers where id=? "; //只查询对应id的数据
		 List<Object> params = new ArrayList<Object>();
		 params.add(id);
		 
		 Map<String, Object> objbyid=Dal.getSingleObject(strSql, params);//执行查询
		 request.setAttribute("objbyid", objbyid);//把查询的结果返回给前端usersedit.jsp页面
		 request.getRequestDispatcher("/admin/usersedit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//把修改后的数据更新到数据库
		 request.setCharacterEncoding("utf-8");  
		 String id=request.getParameter("id");
		 String username=request.getParameter("username");
		 String password=request.getParameter("password");
		 String truename=request.getParameter("truename");
		 
		 DBHelper Dal=new DBHelper();
		 String strSql=" update tbusers set username=?,password=?,truename=? where id=? "; 
		 List<Object> params = new ArrayList<Object>();
		 
		 params.add(username);
		 params.add(password);		 
		 params.add(truename);
		 params.add(id);
		 
		 Dal.excuteSql(strSql, params);
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("text/html;charset=utf-8");
		 response.getWriter().write("<font color='green'>修改成功,3秒之后发生跳转!</font>");
		 response.setHeader("Refresh", "3;URL="+request.getContextPath()+"/admin/usersedit?id="+id);
	}

}
