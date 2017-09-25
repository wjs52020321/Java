package com.alibaba.servlets;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloWordServlets
 */
@WebServlet("/HelloWordServlets")
public class HelloWordServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloWordServlets() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 返回请求的服务器地址		
		response.setCharacterEncoding("UTF-8");
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.getWriter().write("<html>");
		
		response.getWriter().write("<head>");
		response.getWriter().write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">");
		response.getWriter().write("<title>");
		response.getWriter().write("</title>");		
		response.getWriter().write("</head>");
		
		response.getWriter().write("<body>");
		response.getWriter().write("<h1>王八蛋老板黄鹤和小姨子跑了，现价统统9.8</h1>");
		response.getWriter().write("</body>");
		
		response.getWriter().write("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 接收客户端POST数据，调用三层 保存到数据库
		request.setCharacterEncoding("UTF-8");
		System.out.println(request.getParameter("username"));
		System.out.println(request.getParameter("password"));
		//调用三层验证用户名和密码
		
		//保存文件
		
		//更新用户Users表里的ImageURL，调用三层实现
		doGet(request, response);
	}

}
