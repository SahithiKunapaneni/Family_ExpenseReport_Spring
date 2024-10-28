<jsp:include page="Layout/Header_LeftFrame.jsp"></jsp:include> 
 <link  rel ="stylesheet" href ="CSS/All.css"/>
 
<script>
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
		submitForm('addExpense');
	}
}


</script>
<table align='center' border='2'>
	<tr>
		<td colspan='2' align='center'>Add Expense</td>
	</tr>
	<tr style = 'display:none ;  color :red;' id ='errorsTrId'  >
	<td colspan='2' align='left' id='errorsTdId' >
				   
	 </td>
	 </tr>
	 
	<tr>
	
		<td>Expense Type <font color ='red'>*</font></td>
		<td><input type='text' name='type'></td>
	</tr>
	<tr>
		<td>Date <font color ='red'>*</font></td>
		<td><input type='text' name='date'></td>
	</tr>
	<tr>
		<td>Price<font color ='red'>*</font></td>
		<td><input type='text' name='price'></td>
	</tr>
	<tr>
		<td>NumberOfItems <font color ='red'>*</font></td>
		<td><input type='text' name='numberOfItems'></td>
	</tr>

	<tr>
		<td>Total <font color ='red'>*</font></td>
		<td><input type='text' name='total'></td>
	</tr>


	<tr>
		<td>ByWhom <font color ='red'>*</font></td>
		<td><input type='text' name='byWhom'></td>
	</tr>
	<tr>
		<td colspan='2' align='center'>
		 <input type='button' value='Save' onclick ="javascript:validateAddExpenseForm()" class ="button"> 
	</tr>

</table>
<jsp:include page="Layout/Footer.jsp"></jsp:include>
