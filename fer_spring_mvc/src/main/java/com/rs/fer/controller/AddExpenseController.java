package com.rs.fer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rs.fer.entity.Expense;
import com.rs.fer.service.FERService;

@Controller
public class AddExpenseController {
	@Autowired
	private FERService ferService;

	@RequestMapping(value = "/showAddExpense", method = RequestMethod.POST)
	public ModelAndView home() {
		return new ModelAndView("AddExpense");
	}

	@RequestMapping(value = "/addExpense", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute Expense expense, HttpServletRequest request) {
		// 1.get the input
		HttpSession session = request.getSession();
		int userId = Integer.parseInt(session.getAttribute("userId").toString());
		expense.setUserId(userId);

		// 2 call the service by passing the input to execute the bussiness logic

		boolean isAddExpense = ferService.addExpense(expense);

		// 3 Show the status
		if (isAddExpense) {
			session.setAttribute("status", "Expense Added sucessfuly......");
		} else {
			session.setAttribute("status", "Expense Added is faailed......");
		}

		return new ModelAndView("Dashboard");
	}

}
