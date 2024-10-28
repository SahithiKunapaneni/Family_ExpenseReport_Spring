package com.rs.fer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rs.fer.entity.Address;
import com.rs.fer.entity.User;
import com.rs.fer.service.FERService;

@Controller
public class UpdateProfileController {
	@Autowired
	private FERService ferService;

	@RequestMapping(value = "/shownameInfo", method = RequestMethod.POST)
	public ModelAndView nameInfo(HttpServletRequest request) {

		HttpSession session = request.getSession();
		// 1
		int userId = Integer.parseInt(session.getAttribute("userId").toString());
		User user = ferService.getUser(userId);
		session.setAttribute("user", user);

		return new ModelAndView("NameInfo");
	}

	@RequestMapping(value = "/contactInfo", method = RequestMethod.POST)
	public ModelAndView contactInfo(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		user.setFirstName(request.getParameter("firstName"));
		user.setMiddleName(request.getParameter("middleName"));
		user.setLastName(request.getParameter("lastName"));

		session.setAttribute("user", user);

		return new ModelAndView("ContactInfo");
	}

	@RequestMapping(value = "/addressInfo", method = RequestMethod.POST)
	public ModelAndView addressInfo(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		user.setEmail(request.getParameter("email"));
		user.setMobile(request.getParameter("mobile"));
		session.setAttribute("user", user);
		return new ModelAndView("AddressInfo");
	}

	@RequestMapping(value = "/review", method = RequestMethod.POST)
	public ModelAndView review(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		Address address = user.getAddress();
		if (user.getAddress() == null)
			user.setAddress(new Address());
		int addressId = address.getId();
		address.setLineOne(request.getParameter("lineOne"));
		address.setLineTwo(request.getParameter("lineTwo"));
		address.setCity(request.getParameter("city"));
		address.setState(request.getParameter("state"));
		address.setPinCode(request.getParameter("pinCode"));
		address.setCountry(request.getParameter("country"));
		session.setAttribute("user", user);
		return new ModelAndView("Review");
	}

	@RequestMapping(value = "/updateProfile", method = RequestMethod.POST)
	public ModelAndView update(@ModelAttribute User user, HttpServletRequest request) {

		HttpSession session = request.getSession();
		user = (User) session.getAttribute("user");

		boolean isUserUpdate = ferService.updateUser(user);

		// 3 Show the status
		if (isUserUpdate) {
			session.setAttribute("status", "UserProfile  Updated sucessfuly......");
		} else {
			session.setAttribute("status", "UserProfile  Update is faailed......");
		}

		return new ModelAndView("Dashboard");

	}

}
