package com.rs.fer.controller;

import java.util.List;

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
public class ExpenseReportController {
	@Autowired
	private FERService ferService;

	@RequestMapping(value = "/displayExpenseReportSelection", method = RequestMethod.POST)
	public ModelAndView displayExpenseReort() {
		return new ModelAndView("ExpenseReportSelection");
	}

	@RequestMapping(value = "/expenseReport", method = RequestMethod.POST)
	public ModelAndView deleteExpense(@ModelAttribute Expense expense, HttpServletRequest request) {

		HttpSession session = request.getSession();
		int userId = Integer.parseInt(session.getAttribute("userId").toString());
		String expenseType = request.getParameter("type");
		String fromDate = request.getParameter("fromDate");
		String toDate = request.getParameter("toDate");

		List<Expense> expenses = ferService.getExpenseReport(userId, expenseType, fromDate, toDate);
		session.setAttribute("expenses", expenses);
		return new ModelAndView("ExpenseReport");
	}

}
