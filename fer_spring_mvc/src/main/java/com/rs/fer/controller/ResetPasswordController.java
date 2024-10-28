package com.rs.fer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.rs.fer.entity.User;
import com.rs.fer.service.FERService;

@Controller
public class ResetPasswordController {
	@Autowired
	private FERService ferService;

	@RequestMapping(value = "/displayResetPassword", method = RequestMethod.POST)
	public ModelAndView showRegistration() {
		return new ModelAndView("ResetPassword");
	}

	@RequestMapping(value = "/resetPassword", method = RequestMethod.POST)
	public ModelAndView Registration(@RequestParam String newPassword, @RequestParam String currentPassword,
			HttpServletRequest request) {
		// 1.get the input
		HttpSession session = request.getSession();
		int userId = (Integer) session.getAttribute("userId");

		boolean isResetPassword = ferService.resetPassword(userId, newPassword, currentPassword);

		// 3 Show the status
		if (isResetPassword) {
			session.setAttribute("status", "Password  Updated sucessfuly......");
		} else {
			session.setAttribute("status", "Password Update is failed");
		}
		return new ModelAndView("Dashboard");
	}

}
