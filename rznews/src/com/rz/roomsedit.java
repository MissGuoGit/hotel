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
 * Servlet implementation class roomsedit
 */
@WebServlet("/roomsedit")
public class roomsedit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public roomsedit() {
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
				 
				 String strSql=" select * from tbroom where id=? "; //只查询对应id的数据
				 List<Object> params = new ArrayList<Object>();
				 params.add(id);
				 
				 Map<String, Object> objbyid=Dal.getSingleObject(strSql, params);//执行查询
				 request.setAttribute("objbyid", objbyid);//把查询的结果返回给前端usersedit.jsp页面
				 request.getRequestDispatcher("/admin/roomsedit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 request.setCharacterEncoding("utf-8");  
		 String id=request.getParameter("id");
		 String tbroomtype=request.getParameter("tbroomtype");
		 String tbroomnuber=request.getParameter("tbroomnuber");
		 String tbroomprice=request.getParameter("tbroomprice");
		 
		 DBHelper Dal=new DBHelper();
		 String strSql=" update tbroom set tbroomtype=?,tbroomnuber=?,tbroomprice=? where id=? "; 
		 List<Object> params = new ArrayList<Object>();
		 
		 params.add(tbroomtype);
		 params.add(tbroomnuber);		 
		 params.add(tbroomprice);
		 params.add(id);
		 
		 Dal.excuteSql(strSql, params);
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("text/html;charset=utf-8");
		 response.getWriter().write("<font color='green'>修改成功,3秒之后发生跳转!</font>");
		 response.setHeader("Refresh", "3;URL="+request.getContextPath()+"/admin/roomsedit?id="+id);
	}

}
