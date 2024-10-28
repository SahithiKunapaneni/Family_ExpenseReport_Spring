package com.rs.fer.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.rs.fer.entity.Expense;
import com.rs.fer.service.FERService;

@Controller
public class EditExpenseController {
	@Autowired
	private FERService ferService;

	@RequestMapping(value = "/showEditExpenseOptions", method = RequestMethod.POST)
	public ModelAndView options(HttpServletRequest request) {

		HttpSession session = request.getSession();
		int userId = Integer.parseInt(session.getAttribute("userId").toString());

		List<Expense> expenses = ferService.getExpenseOptions(userId);
		session.setAttribute("expenses", expenses);

		return new ModelAndView("EditExpenseOptions");
	}

	@RequestMapping(value = "/showEditExpense", method = RequestMethod.POST)
	public ModelAndView show(@RequestParam int expenseId, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Expense expense = ferService.getExpense(expenseId);

		session.setAttribute("expense", expense);
		session.setAttribute("expenseId", expenseId);
		return new ModelAndView("EditExpense");
	}

	@RequestMapping(value = "/editExpense", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute Expense expense, HttpServletRequest request) {
		// 1.get the input
		HttpSession session = request.getSession();
		int userId = Integer.parseInt(session.getAttribute("userId").toString());
		expense.setUserId(userId);

		// 2 call the service by passing the input to execute the bussiness logic
		int expenseId = (int) (session.getAttribute("expenseId"));
		expense.setId(expenseId);
		boolean isEditExpense = ferService.editExpense(expense);

		// 3 Show the status
		if (isEditExpense) {
			session.setAttribute("status", "Expense Updated sucessfuly......");
		} else {
			session.setAttribute("status", "Expense Updated is failed......");
		}

		return new ModelAndView("Dashboard");
	}

}
