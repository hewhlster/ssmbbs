package org.fjh.intercept;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author 樊建华 显示用拦截器
 */
public class IsLoginedIntercept implements HandlerInterceptor {
	// 该方法将在整个请求结束之后执行
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// System.out.println("afterCompletion");
	}

	// 当前请求进行处理之后，也就是Controller方法调用之后执行

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// System.out.println("postHandle");
	}

	// 该方法将在请求处理之前进行调用

	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2) throws Exception {
		// System.out.println("preHandle");
		String uri = arg0.getRequestURI();

		if (uri.indexOf("login.do") > 0 || 
			uri.indexOf("regist.do")>0 ||
			uri.indexOf("checkcode.do")>0) {
			return true;
		} else {
			Object logineduser = arg0.getSession().getAttribute("logineduser");
			if (logineduser != null)
				return true;// 返回true才能将请求分发到下一个资源
			else {
				//跳转到登录页
				arg0.getRequestDispatcher("login.jsp").forward(arg0, arg1);
				return false;
			}
		}
	}
}
