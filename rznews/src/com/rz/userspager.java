package com.rz;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class userspage
 */
@WebServlet("/userspage")
public class userspager extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userspager() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int currentpage=1;//当前页面 ，默认查询为第1页
		try
		{
			String p=request.getParameter("p"); //接收参数p,即当前页码。
			currentpage = Integer.valueOf(p);//接收到的参数转为int类型
		}
		catch(Exception e){
			currentpage=1;//如果类型转换错误，默认查询第1页
		}
		
		DBHelper Dal=new DBHelper();
		
		
		//分页查询需要查询2次，第一次查询全部数据，这样才知道总共有多少条数据，才好分页。
		//查询全部
		String strSql=" select id from tbusers order by id desc "; 
		List<Map<String, Object>> listall = null;
		List<Object> params = new ArrayList<Object>();
		try {
			listall=Dal.executeQuery(strSql, params);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//获取分页信息
		Pager pageobj=new Pager();
		pageobj.allrecordcount=listall.size();//把总共条数告诉分页类
		pageobj.pagesize=10;//每页显示条数
		pageobj.currentpage=currentpage;//当前页码
		pageobj.urlname="";
		
		String pagestr=pageobj.GetPageInfo();//得到分页信息，保存到字符串pagestr里面，这个信息需要返回给前端的页面。
		
		//分页查询
		int startindex=pageobj.pagesize*(pageobj.currentpage-1);//计算要跳过多少条数据
		String strSqlpager=" select * from tbusers order by id desc limit "+startindex+","+pageobj.pagesize+""; 
		
		//第二次查询，把查询结果保存到listpage里面，这个结果需要返回给前端。
		List<Map<String, Object>> list = null;
		try {
			list=Dal.executeQuery(strSqlpager, params);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("pagestr", pagestr);//把分页信息返回给前端。
		request.setAttribute("list", list);//把数据返回给前端。
		request.getRequestDispatcher("/admin/userspager.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
