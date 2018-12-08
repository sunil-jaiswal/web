/**
 * 
 */
package com.web.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.web.common.Connect;
import com.web.common.Constants;
import com.web.common.LoginBean;
import com.web.common.Utils;


/**
 * @author sunil
 *
 */
@Controller
public class LoginController {

	@RequestMapping(value="login")
	public String login(HttpServletRequest request, RedirectAttributes attributes) {
		
		String code = request.getParameter("code");
		if(code != null) {
			if(code.equalsIgnoreCase("1")) {
				attributes.addFlashAttribute("loginStatusCode", "Please login again");
			}if(code.equalsIgnoreCase("2")) {
				attributes.addFlashAttribute("loginStatusCode", "You have been loggedout successfully");
			}
		}else {
			return "studentdashboard";
		}
		
		 return "redirect:/studentdashboard";
	}
	
	@RequestMapping(value = "authenticate", method = RequestMethod.POST)
	public String authenticateUser(LoginBean loginBean, HttpServletRequest request, RedirectAttributes attributes) throws IOException {

		ObjectNode requestJson = JsonNodeFactory.instance.objectNode();
		requestJson.put("userName", request.getParameter("userName"));
		requestJson.put("password", request.getParameter("password"));
		String response = Connect.connectPOST("user/authenticate", requestJson.toString());
		ObjectNode objectNode =  Utils.StringToObjectNode(response);
		if(!objectNode.get("status").asText().equalsIgnoreCase("success")) {
			attributes.addFlashAttribute("loginStatusCode", "Invalid username or password");
		      return "redirect:login";
		}
		
		JsonNode node = objectNode.get("data");
		HttpSession session = request.getSession();
		session.setAttribute("id", node.get("id"));
		session.setAttribute("firstName", node.get("firstName"));
		session.setAttribute("lastName", node.get("lastName"));
		session.setAttribute("email", node.get("email"));
		session.setAttribute("roleId", node.get("roleId"));
		return Constants.STUDENT_DASHBOARD_REDIRECT;
		//return "success";

	}

	@RequestMapping(value = "signmeup")
	  public @ResponseBody String signUpUser(@RequestBody String reqData, HttpSession session) throws IOException {
		
		Connect.connectPOST("users/signup", reqData);
		
		System.out.println("reqData "+reqData);
		return "SUCCESS";
	  }
	
	@RequestMapping(value = "/studentdashboard")
	  public String getPatientList(Model model, HttpServletRequest request) throws JsonParseException, JsonMappingException, IOException {

	    return "studentdashboard";
	  }

	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	  public String logOutUser(Model model, HttpSession session, HttpServletRequest request) {

	    // invalidate the session
	    String redirectUrl = "redirect:/login";
	    session.invalidate();
	    return redirectUrl;
	  }
	
	@RequestMapping(value = "/profile")
	  public String profile(Model model, HttpServletRequest request) throws JsonParseException, JsonMappingException, IOException {

	    return "profile";
	  }

}
