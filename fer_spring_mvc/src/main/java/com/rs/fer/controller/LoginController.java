package com.rs.fer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.rs.fer.service.FERService;

@Controller
public class LoginController {
	@Autowired
	private FERService ferService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home() {
		return new ModelAndView("Login");
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam String username, @RequestParam String password,
			HttpServletRequest request) {
		int userId = ferService.login(username, password);
		String viewName = null;
		HttpSession session = request.getSession();
		// 3 Show the status
		if (userId > 0) {

			session.setAttribute("username", username);
			session.setAttribute("userId", userId);

			// Header & leftFrame

			// Body
			session.setAttribute("status", "Welcome to the user :" + username + ".....!");
			viewName = "Dashboard";

			// footer
		} else {
			session.setAttribute("status", "Incorrect username/password please try again");

			viewName = "Login";
		}

		return new ModelAndView(viewName);

	}

}
