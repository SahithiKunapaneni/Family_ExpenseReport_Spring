package com.rs.fer.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rs.fer.entity.Address;
import com.rs.fer.entity.Expense;
import com.rs.fer.entity.User;
import com.rs.fer.repository.ExpenseRepository;
import com.rs.fer.repository.UserRepository;
import com.rs.fer.service.FERService;
@Service
public class FERServiceImpl implements FERService {
    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private ExpenseRepository expenseRepository;
    
    @Transactional
	@Override
	public boolean registration(User user) {
		return userRepository.save(user).getId()>0 ;
	}

	@Override
	public int login(String username, String password) {
		List<User>users = userRepository.findByUsernameAndPassword(username,password);
		if (users != null && !users.isEmpty()) {
			return users.get(0).getId();
		}
		return 0;
	}
    @Transactional
	@Override
	public boolean addExpense(Expense expense) {
		return expenseRepository.save(expense).getId()>0;
	}
     
	@Override
	public boolean editExpense(Expense expense) {
		return addExpense(expense);
	}
    @Transactional
	@Override
	public boolean deleteExpense(int expenseId) {
		try {
			expenseRepository.deleteById(expenseId);
		}catch(Exception ex) {
			return false;
		}
		return true;
	}

	@Override
	public boolean resetPassword(int userId, String newPassword, String currentPassword) {
		User user = getUser(userId);
		if (user != null && currentPassword.equals(user.getPassword())) {
			 user.setPassword(newPassword);
			 return registration(user);
		}
		return false;
	}

	@Override
	public List<Expense> getExpenseOptions(int userId) {
		
		return expenseRepository.findByUserId(userId);
	}

	@Override
	public Expense getExpense(int ExpenseId) {
		return expenseRepository.findById(ExpenseId).get();
	}

	@Override
	public List<Expense> getExpenseReport(int userId, String expenseType, String fromDate, String toDate) {
		
		return expenseRepository.findByIdAndTypeAndDateBetween(userId,expenseType,fromDate,toDate);
	}

	@Override
	public User getUser(int UserId) {
		Optional<User> optionalObj = userRepository.findById(UserId);
		User user = null;
		if(optionalObj.isPresent())
		{
			user = optionalObj.get();
			
			if(user.getAddress() == null) {
				user.setAddress(new Address());
			}
		}
		return user;
	}

	@Override
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		return registration(user);
	}
	
}
