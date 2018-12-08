/**
 * 
 */
package com.web.conf;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


/**
 * @author sunil
 *
 */
public class Interceptor extends HandlerInterceptorAdapter {
	
	@Override
	  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

	    String requestUrl = request.getRequestURL().toString();
	    String path = requestUrl.split("/")[requestUrl.split("/").length - 1];
	    if ((!path.equalsIgnoreCase("profile") && !path.equalsIgnoreCase("login")  && !path.equalsIgnoreCase("logout") && !path.equalsIgnoreCase("authenticate") && ((null == request.getSession(false)) || (null == request.getSession(false).getAttribute("id"))))) {
	      response.setHeader("REQUEST_STATUS", "401");
	      response.setStatus(401);
	      request.getRequestDispatcher("login?code=1").forward(request, response);
	      return false;
	    }
	    return super.preHandle(request, response, handler);
	  }

}
