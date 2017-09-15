package org.fjh.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginedFilter implements Filter{
	private String notFilterArray[];//不要过滤的servlet数组
	
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		//判断过滤到的servlet是否要过滤
		HttpServletRequest req = (HttpServletRequest) arg0;
		HttpServletResponse resp = (HttpServletResponse) arg1;
		String uri=req.getRequestURI();
		String url=req.getRequestURL().toString();
		System.out.println("uri="+uri+"\turl="+url);
		
		if( !isFilter(uri)){
			//直接放行
			arg2.doFilter(arg0, arg1);
		} else {
			//要过滤
			//从session中取得以登陆用户的信息
			Object user=req.getSession().getAttribute("logineduser");
			if(user!=null){
				//以登陆，将请求转发到下一个资源
				arg2.doFilter(arg0, arg1);
			} else {
				//跳到login.html
				resp.sendRedirect("/bbs/login.html");
			}
		}
	}

	public void init(FilterConfig arg0) throws ServletException {
		String notfilter=arg0.getInitParameter("notfilter");
		//根据约定用","分割字符，返回一个数组
	     this.notFilterArray=notfilter.split(",");
	}
	
	/**
	 * true:过滤  false：不要过滤
	 */
	private boolean isFilter(String uri){
		boolean ret = true;
		for(String temp:notFilterArray){
			if( uri.endsWith(temp)){
				ret =false;
				break;
			}
		}
		return ret;
	}

}
