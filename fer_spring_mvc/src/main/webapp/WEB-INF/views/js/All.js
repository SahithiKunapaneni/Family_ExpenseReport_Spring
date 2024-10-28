function validateRegistrationForm() {
	//1 get the form object and intialize errors object
	var form = document.RegistrationForm;
	var errors = '';

	// 2 Add the error message if the required field value is empty
	if (form.FirstName.value.trim() == '') {
		errors += 'Please enter first Name<BR>';
	}
	if (form.lastName.value.trim() == '') {
		errors += 'Please enter last Name<BR>';
	}
	if (form.email.value.trim() == '') {
		errors += 'Please enter Email<BR>';
	}
	if (form.userName.value.trim() == '') {
		errors += 'Please enter User Name<BR>';
	}
	if (form.password.value.trim() == '') {
		errors += 'Please enter  password<BR>';
	}
	if (form.mobile.value.trim() == '') {
		errors += 'Please enter  Mobile<BR>';
	}

	// 3 Show the errors if present otherwise submit the form.
	if (errors != '') {
		// alert(errors);
		// Get the td element and add errors to the same 
		var tdElement = document.getElementById('errorsTdId');
		tdElement.innerHTML = errors;
		// get the tr element and show the same
		var trElement = document.getElementById('errorsTrId');
		trElement.style.display = '';
	} else {
		form.submit();
	}
}
function validateLoginForm() {
	//1 get the form object and intialize errors object
	var form = document.LoginForm;
	var errors = '';

	// 2 Add the error message if the required field value is empty
	if (form.username.value.trim() == '') {
		errors += 'Please enter  User Name<BR>';
	}

	if (form.password.value.trim() == '') {
		errors += 'Please enter Password <BR>';
	}

	// 3 Show the errors if present otherwise submit the form.
	if (errors != '') {
		// alert(errors);
		// Get the td element and add errors to the same 
		var tdElement = document.getElementById('errorsTdId');
		tdElement.innerHTML = errors;
		// get the tr element and show the same
		var trElement = document.getElementById('errorsTrId');
		trElement.style.display = '';
	} else {
		form.submit();
	}
}
function validateAddExpenseForm() {
	//1 get the form object and intialize errors object
	var form = document.DashboardForm;
	var errors = '';

	// 2 Add the error message if the required field value is empty
	if (form.type.value.trim() == '') {
		errors += 'Please enter  Expense Type<BR>';
	}
	if (form.date.value.trim() == '') {
		errors += 'Please enter Date<BR>';
	}
	if (form.price.value.trim() == '') {
		errors += 'Please enter Price<BR>';
	}
	if (form.numberOfItems.value.trim() == '') {
		errors += 'Please enter Number of Items<BR>';
	}
	if (form.total.value.trim() == '') {
		errors += 'Please enter  Total<BR>';
	}
	if (form.byWhom.value.trim() == '') {
		errors += 'Please enter  ByWhom<BR>';
	}

	// 3 Show the errors if present otherwise submit the form.
	if (errors != '') {
		// alert(errors);
		// Get the td element and add errors to the same 
		var tdElement = document.getElementById('errorsTdId');
		tdElement.innerHTML = errors;
		// get the tr element and show the same
		var trElement = document.getElementById('errorsTrId');
		trElement.style.display = '';
	} else {
		submitForm('AddExpensePost.jsp');
	}
}
function validateEditExpenseOptionsForm() {
	//1 get the form object and intialize errors object
	var form = document.DashboardForm;
	var errors = '';

	// 2 Add the error message if the required field value is empty
	if (form.expenseId.value.trim() == '') {
		errors += 'Please enter  Expense Type<BR>';
	}

	// 3 Show the errors if present otherwise submit the form.
	if (errors != '') {
		// alert(errors);
		// Get the td element and add errors to the same 
		var tdElement = document.getElementById('errorsTdId');
		tdElement.innerHTML = errors;
		// get the tr element and show the same
		var trElement = document.getElementById('errorsTrId');
		trElement.style.display = '';
	} else {
		submitForm('EditExpense.jsp');
	}
}
function validateEditExpenseForm() {
	//1 get the form object and intialize errors object
	var form = document.DashboardForm;
	var errors = '';

	// 2 Add the error message if the required field value is empty
	if (form.type.value.trim() == '') {
		errors += 'Please enter  Expense Type<BR>';
	}
	if (form.date.value.trim() == '') {
		errors += 'Please enter Date<BR>';
	}
	if (form.price.value.trim() == '') {
		errors += 'Please enter price<BR>';
	}
	if (form.numberOfItems.value.trim() == '') {
		errors += 'Please enter Number of Items<BR>';
	}
	if (form.total.value.trim() == '') {
		errors += 'Please enter  Total<BR>';
	}
	if (form.byWhom.value.trim() == '') {
		errors += 'Please enter  ByWhom<BR>';
	}

	// 3 Show the errors if present otherwise submit the form.
	if (errors != '') {
		// alert(errors);
		// Get the td element and add errors to the same 
		var tdElement = document.getElementById('errorsTdId');
		tdElement.innerHTML = errors;
		// get the tr element and show the same
		var trElement = document.getElementById('errorsTrId');
		trElement.style.display = '';
	} else {
		submitForm('EditExpensePost.jsp');
	}
}
function validateDeleteExpenseOptionsForm() {
	//1 get the form object and intialize errors object
	var form = document.DashboardForm;
	var errors = '';

	// 2 Add the error message if the required field value is empty
	if (form.expenseId.value.trim() == '') {
		errors += 'Please enter  Expense Type<BR>';
	}

	// 3 Show the errors if present otherwise submit the form.
	if (errors != '') {
		// alert(errors);
		// Get the td element and add errors to the same 
		var tdElement = document.getElementById('errorsTdId');
		tdElement.innerHTML = errors;
		// get the tr element and show the same
		var trElement = document.getElementById('errorsTrId');
		trElement.style.display = '';
	} else {
		submitForm('DeleteExpensePost.jsp');
	}
}
function validateExpenseReportForm() {
	//1 get the form object and intialize errors object
	var form = document.DashboardForm;
	var errors = '';

	// 2 Add the error message if the required field value is empty
	if (form.type.value.trim() == '') {
		errors += 'Please enter  Expense Type<BR>';
	}
	if (form.fromDate.value.trim() == '') {
		errors += 'Please enter From Date<BR>';
	}
	if (form.toDate.value.trim() == '') {
		errors += 'Please enter To Date<BR>';
	}

	// 3 Show the errors if present otherwise submit the form.
	if (errors != '') {
		// alert(errors);
		// Get the td element and add errors to the same 
		var tdElement = document.getElementById('errorsTdId');
		tdElement.innerHTML = errors;
		// get the tr element and show the same
		var trElement = document.getElementById('errorsTrId');
		trElement.style.display = '';
	} else {
		submitForm('ExpenseReportPost.jsp');
	}
}
function validateResetPasswordForm() {
	//1 get the form object and intialize errors object
	var form = document.DashboardForm;
	var errors = '';

	// 2 Add the error message if the required field value is empty
	if (form.currentPassword.value.trim() == '') {
		errors += 'Please enter  Current Password<BR>';
	}
	if (form.newPassword.value.trim() == '') {
		errors += 'Please enter  new password<BR>';
	}
	if (form.confirmNewPassword.value.trim() == '') {
		errors += 'Please enter Confirm New Password <BR>';
	}

	// 3 Show the errors if present otherwise submit the form.
	if (errors != '') {
		// alert(errors);
		// Get the td element and add errors to the same 
		var tdElement = document.getElementById('errorsTdId');
		tdElement.innerHTML = errors;
		// get the tr element and show the same
		var trElement = document.getElementById('errorsTrId');
		trElement.style.display = '';
	} else {
		submitForm('ResetPasswordPost.jsp');
	}
}
function validateNameInfoForm() {
	//1 get the form object and intialize errors object
	var form = document.DashboardForm;
	var errors = '';

	// 2 Add the error message if the required field value is empty
	if (form.firstName.value.trim() == '') {
		errors += 'Please enter  firstName<BR>';
	}

	if (form.lastName.value.trim() == '') {
		errors += 'Please enter lastName <BR>';
	}

	// 3 Show the errors if present otherwise submit the form.
	if (errors != '') {
		// alert(errors);
		// Get the td element and add errors to the same 
		var tdElement = document.getElementById('errorsTdId');
		tdElement.innerHTML = errors;
		// get the tr element and show the same
		var trElement = document.getElementById('errorsTrId');
		trElement.style.display = '';
	} else {
		submitForm('ContactInfo.jsp');
	}
}
function validateContactInfoForm() {
	//1 get the form object and intialize errors object
	var form = document.DashboardForm;
	var errors = '';

	// 2 Add the error message if the required field value is empty
	if (form.email.value.trim() == '') {
		errors += 'Please enter  Email<BR>';
	}

	if (form.mobile.value.trim() == '') {
		errors += 'Please enter Mobile <BR>';
	}

	// 3 Show the errors if present otherwise submit the form.
	if (errors != '') {
		// alert(errors);
		// Get the td element and add errors to the same 
		var tdElement = document.getElementById('errorsTdId');
		tdElement.innerHTML = errors;
		// get the tr element and show the same
		var trElement = document.getElementById('errorsTrId');
		trElement.style.display = '';
	} else {
		submitForm('AddressInfo.jsp')
	}
}
function validateAddressInfoForm() {
	//1 get the form object and intialize errors object
	var form = document.DashboardForm;
	var errors = '';

	// 2 Add the error message if the required field value is empty
	if (form.lineOne.value.trim() == '') {
		errors += 'Please enter  Line One Address<BR>';
	}

	if (form.city.value.trim() == '') {
		errors += 'Please enter city <BR>';
	}
	if (form.state.value.trim() == '') {
		errors += 'Please enter state <BR>';
	}
	if (form.pinCode.value.trim() == '') {
		errors += 'Please enter pinCode <BR>';
	}
	if (form.country.value.trim() == '') {
		errors += 'Please enter country <BR>';
	}
	// 3 Show the errors if present otherwise submit the form.
	if (errors != '') {
		// alert(errors);
		// Get the td element and add errors to the same 
		var tdElement = document.getElementById('errorsTdId');
		tdElement.innerHTML = errors;
		// get the tr element and show the same
		var trElement = document.getElementById('errorsTrId');
		trElement.style.display = '';
	} else {
		submitForm('Review.jsp');
	}
}
