package com.rs.fer.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.rs.fer.entity.Expense;
import com.rs.fer.service.FERService;

@Controller
public class DeleteExpenseController {
	@Autowired
	private FERService ferService;

	@RequestMapping(value = "/displayDeleteExpenseOptions", method = RequestMethod.POST)
	public ModelAndView showDeleteExpense(HttpServletRequest request) {
		HttpSession session = request.getSession();
		int userId = Integer.parseInt(session.getAttribute("userId").toString());

		List<Expense> expenses = ferService.getExpenseOptions(userId);
		session.setAttribute("expenses", expenses);
		return new ModelAndView("DeleteExpenseOptions");
	}

	@RequestMapping(value = "/deleteExpense", method = RequestMethod.POST)
	public ModelAndView deleteExpense(@RequestParam int expenseId, HttpServletRequest request) {
		// 1.get the input
		HttpSession session = request.getSession();

		// 2 call the service by passing the input to execute the bussiness logic

		boolean isDeleteExpense = ferService.deleteExpense(expenseId);

		// 3 Show the status
		if (isDeleteExpense) {
			session.setAttribute("status", "Expense Deleted sucessfuly......");
		} else {
			session.setAttribute("status", "Expense Delete  is faailed......");
		}

		return new ModelAndView("Dashboard");
	}

}
