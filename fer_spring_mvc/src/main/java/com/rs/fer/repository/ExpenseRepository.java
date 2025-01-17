package com.rs.fer.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.rs.fer.entity.Expense;

@Repository
public interface ExpenseRepository extends JpaRepository<Expense, Integer>{
    
       List<Expense> findByUserId(int userId);

	List<Expense> findByIdAndTypeAndDateBetween(int userId, String expenseType, String fromDate, String toDate);
}
