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
 * Action�����������������������
 * 
 * @author wjs
 */
public class LoginAction extends ActionSupport {
	// ���л�ID
	private static final long serialVersionUID = 1L;
	// ���� ˽���ֶ�
	private String username;
	private String password;

	public String execute()  throws Exception {
		// ��ӡǰ̨���ode�û���������
		System.out.println(this.getUsername());
		System.out.println(this.getPassword());
		// ��ȡԭʼ����
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		request.setCharacterEncoding("UTF-8");// ��ֹ��������
		// ��ȡ�Ի�
		Map<String, Object> session = ServletActionContext.getContext().getSession();
		
		// ҳ���ύ���ݣ�Session�Ự
		String usernameInput = request.getParameter("username");
		String passwordInput = request.getParameter("password");
		// �������ݿ⣬Java��֤�û�������
		Connection connection = null;
		ResultSet rs = null;
		try {
			
			// 1.ע������
			Class.forName("com.mysql.jdbc.Driver");
			// 2.URL���ݿ��ַ
			String url = "jdbc:mysql://localhost:3306/alibaba?useUnicode=true&characterEncoding=UTF-8&useSSL=false";
			String user = "root";
			String password3 = "123qwe";
			// 3.��ȡ����
			connection = DriverManager.getConnection(url, user, password3);
			String sql = "select * from users where name=? and password=?";
			// 4.Ԥ����sql
			PreparedStatement pstmt = connection.prepareStatement(sql);
			// 5�����������Σ�-- �����ʺŵ�˳��������
			pstmt.setString(1, usernameInput);
			pstmt.setString(2, HashMD5.getMD5(passwordInput));// ��ϣ
			// 6.ִ�в�ѯpasswordInput
			rs = pstmt.executeQuery();
			if (rs.next())// ������ƥ��ɹ� ����session��cookie
			{
				// �����¼�ɹ� ���浽Session����ʾ��¼�û�
				session.put("username", usernameInput);
				session.put("password", passwordInput);
				session.put("userid", rs.getInt("Id"));
				session.put("avater", rs.getString("ImageURL"));
				// ʹ��Cookie��ס����
				Cookie cookieName = new Cookie("username", usernameInput);
				Cookie cookiePassword = new Cookie("password", passwordInput);
				response.addCookie(cookieName);
				response.addCookie(cookiePassword);
				// JSPҳ����ת
				//response.sendRedirect(request.getContextPath() + "/Admin/index.jsp");
				// Request������� �����û��������������
				// responseӦ�� ��Ӧ ���ݶ��� ���������� �ش����ͻ������������������
				return "success";
			} else// ʧ�� ���µ�¼ҳ��
			{
				return "error";
				//response.sendRedirect(request.getContextPath() + "/Admin/Account/login.jsp");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 7.�ر�
			if (rs != null) {
				rs.close();
				connection.close();
			}
			if (connection != null) {
				connection.close();
			}
		}
		// �������㣬�û��������룬��ɵ�¼��֤
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
