<html>
<head>
<title>FER-DashBoard</title>
   <script>
        function submitForm(path){
        	// 1. get the form object
        	var form = document.DashboardForm;
        	
        	
        	// 2 set the path to the form action
        	form.action =path;
        	
        	// 3 submit the form
        	form.submit();
        	
        }
   </script>
   
   <script type="text/javascript" src ="js/All.js"></script>  
   
</head>
<body>
	<form name ='DashboardForm' method ='post'>
		<table align='center'border='2' height='550px'width='800px'>
			<tr height ='75px' >
				<td colspan='2' align='center' >
				    Family Expense Report
				    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				    user:
				     ${username}
				    
				    
				     </td>
			</tr>
			<tr>
				<td width=150px>
				    <br><br>
				    <a href ="javascript: submitForm('showAddExpense')">AddExpense</a>
				    <br><br>
				    <a href ="javascript: submitForm('showEditExpenseOptions')">EditExpense</a>
				    <br><br>
				    <a href ="javascript: submitForm ('displayDeleteExpenseOptions')">DeleteExpense</a>
				    <br><br>
				    <a href ="javascript: submitForm ('displayExpenseReportSelection')">ExpenseReport</a>
				    <br><br>
				    <a href ="javascript: submitForm('displayResetPassword')">ResetPassword</a>
				    <br><br>
				    <a href ="javascript: submitForm('shownameInfo')">Update Profile</a>
				    <br><br>
				    <a href ='Login.html'>LogOut</a>
				    <br><br>
				</td>
				   <td align='center'>
				    