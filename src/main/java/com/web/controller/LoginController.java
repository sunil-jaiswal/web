/**
 * 
 */
package com.web.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.common.Connect;


/**
 * @author sunil
 *
 */
@Controller
public class LoginController {

	@RequestMapping(value="login", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView view = new ModelAndView("login");
		return view;
	}
	
	@RequestMapping(value = "authenticate")
	  public @ResponseBody String authenticateUser(@RequestBody String reqData, HttpSession session) throws IOException {

		Connect.connectPOST("users/get", reqData);
		System.out.println("reqData "+reqData);
		return "SUCCESS";
	  }

	@RequestMapping(value = "signmeup")
	  public @ResponseBody String signUpUser(@RequestBody String reqData, HttpSession session) throws IOException {
		
		Connect.connectPOST("users/signup", reqData);
		
		System.out.println("reqData "+reqData);
		return "SUCCESS";
	  }

}
