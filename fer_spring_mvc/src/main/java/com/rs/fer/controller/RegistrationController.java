package com.rs.fer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rs.fer.entity.User;
import com.rs.fer.service.FERService;

@Controller
public class RegistrationController {
	@Autowired
	private FERService ferService;

	@RequestMapping(value = "/displayRegistration")
	public ModelAndView showRegistration() {
		return new ModelAndView("Registration");
	}

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public ModelAndView Registration(@ModelAttribute User user, HttpServletRequest request) {

		// 1.get the input
		HttpSession session = request.getSession();

		// 2 call the service by passing the input to execute the bussiness logic

		boolean isRegister = ferService.registration(user);
		String viewName = null;
		// 3 Show the status
		if (isRegister) {
			session.setAttribute("status", "User registration is done sucessfuly......");
			viewName = "Login";
		} else {
			session.setAttribute("status", "User registration is failed");
			viewName = "Registration";
		}
		return new ModelAndView(viewName);

	}

}
