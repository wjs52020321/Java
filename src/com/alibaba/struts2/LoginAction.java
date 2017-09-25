package com.alibaba.struts2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.alibaba.tools.HashMD5;
import com.opensymphony.xwork2.ActionSupport;
/**
 * Action动作，控制器，处理请求的
 * 
 * @author wjs
 */
public class LoginAction extends ActionSupport {
	// 序列化ID
	private static final long serialVersionUID = 1L;
	// 数据 私有字段
	private String username;
	private String password;

	public String execute()  throws Exception {
		// 打印前台提价ode用户名和密码
		System.out.println(this.getUsername());
		System.out.println(this.getPassword());
		// 获取原始请求
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		request.setCharacterEncoding("UTF-8");// 防止出现乱码
		// 获取对话
		Map<String, Object> session = ServletActionContext.getContext().getSession();
		
		// 页面提交数据，Session会话
		String usernameInput = request.getParameter("username");
		String passwordInput = request.getParameter("password");
		// 访问数据库，Java验证用户名密码
		Connection connection = null;
		ResultSet rs = null;
		try {
			
			// 1.注册驱动
			Class.forName("com.mysql.jdbc.Driver");
			// 2.URL数据库地址
			String url = "jdbc:mysql://localhost:3306/alibaba?useUnicode=true&characterEncoding=UTF-8&useSSL=false";
			String user = "root";
			String password3 = "123qwe";
			// 3.获取链接
			connection = DriverManager.getConnection(url, user, password3);
			String sql = "select * from users where name=? and password=?";
			// 4.预处理sql
			PreparedStatement pstmt = connection.prepareStatement(sql);
			// 5、参数（传参）-- 按照问号的顺序来传参
			pstmt.setString(1, usernameInput);
			pstmt.setString(2, HashMD5.getMD5(passwordInput));// 哈希
			// 6.执行查询passwordInput
			rs = pstmt.executeQuery();
			if (rs.next())// 有数据匹配成功 保存session和cookie
			{
				// 如果登录成功 保存到Session，显示登录用户
				session.put("username", usernameInput);
				session.put("password", passwordInput);
				session.put("userid", rs.getInt("Id"));
				session.put("avater", rs.getString("ImageURL"));
				// 使用Cookie记住密码
				Cookie cookieName = new Cookie("username", usernameInput);
				Cookie cookiePassword = new Cookie("password", passwordInput);
				response.addCookie(cookieName);
				response.addCookie(cookiePassword);
				// JSP页面跳转
				//response.sendRedirect(request.getContextPath() + "/Admin/index.jsp");
				// Request请求对象 包含用户请求的所以数据
				// response应答 相应 数据对象 包含服务器 回传给客户端浏览器的所以数据
				return "success";
			} else// 失败 重新登录页面
			{
				return "error";
				//response.sendRedirect(request.getContextPath() + "/Admin/Account/login.jsp");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 7.关闭
			if (rs != null) {
				rs.close();
				connection.close();
			}
			if (connection != null) {
				connection.close();
			}
		}
		// 调用三层，用户名和密码，完成登录验证
		return "success";
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
