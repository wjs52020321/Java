package com.alibaba.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class JasonFilter
 */
@WebFilter("/JasonFilter")
public class JasonFilter implements Filter {

    /**
     * Default constructor. 
     */
    public JasonFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * ִ�й��� ������������
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// �������֤ Admin�ļ����� ҳ������¼����ܷ��� ���ǵ�¼ҳ���ǿ��ŵ�
		/*System.out.println(request.getRemoteAddr());
		System.out.println(request.getLocalAddr());
		System.out.println(request.getRemoteHost());*/
		//����ת��
		HttpServletRequest req =(HttpServletRequest)request;
		HttpServletResponse res =(HttpServletResponse)response;
		System.out.println(req.getRequestedSessionId());
		System.out.println(req.getRequestURI());
		String url =req.getRequestURI();//����ԭʼ·��
		//�����֤
		if(url.toLowerCase().indexOf("/admin/account/")!=-1){
			// ������������
			chain.doFilter(request, response);
			return;
		}
		//����Admin�ļ������ǵ�¼��ע�ᣬ�Ǳ���Session��ֵ
		if(url.toLowerCase().indexOf("/admin/")!=-1){
			//�鵽��Admin�ļ��У���¼��ע��ҳ��������ʣ����������
			if(req.getSession().getAttribute("username")!=null){
				// ������������
				chain.doFilter(request, response);
				return;
			}else{
				//��ת����¼
				res.sendRedirect(req.getContextPath()+"/Admin/Account/login.jsp");
			}
		}else {
			// ������������
			chain.doFilter(request, response);
		}		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
