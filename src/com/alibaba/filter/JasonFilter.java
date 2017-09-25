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
	 * 执行过滤 做爱做的事情
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// 做身份验证 Admin文件夹中 页面必须登录后才能访问 但是登录页面是开放的
		/*System.out.println(request.getRemoteAddr());
		System.out.println(request.getLocalAddr());
		System.out.println(request.getRemoteHost());*/
		//类型转换
		HttpServletRequest req =(HttpServletRequest)request;
		HttpServletResponse res =(HttpServletResponse)response;
		System.out.println(req.getRequestedSessionId());
		System.out.println(req.getRequestURI());
		String url =req.getRequestURI();//请求原始路径
		//身份验证
		if(url.toLowerCase().indexOf("/admin/account/")!=-1){
			// 正常放行请求
			chain.doFilter(request, response);
			return;
		}
		//访问Admin文件，不是登录和注册，那必须Session有值
		if(url.toLowerCase().indexOf("/admin/")!=-1){
			//查到了Admin文件夹，登录和注册页面允许访问，不允许访问
			if(req.getSession().getAttribute("username")!=null){
				// 正常放行请求
				chain.doFilter(request, response);
				return;
			}else{
				//跳转到登录
				res.sendRedirect(req.getContextPath()+"/Admin/Account/login.jsp");
			}
		}else {
			// 正常放行请求
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
