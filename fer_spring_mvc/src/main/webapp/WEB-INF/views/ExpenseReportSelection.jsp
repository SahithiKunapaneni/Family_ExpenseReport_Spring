<jsp:include page="Layout/Header_LeftFrame.jsp"></jsp:include>
 <link  rel ="stylesheet" href ="CSS/All.css"/>
<script type="text/javascript" src ="js/All.js"></script>

<script>
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
		submitForm('expenseReport');
	}
}

</script>
					  <table align='center'border='2'>
					  <tr>
								<td colspan='2' align='center' >
								    Expense Report
								    </td>
							</tr>
							<tr style = 'display:none ;  color :red;' id ='errorsTrId'  >
	                        <td colspan='2' align='left' id='errorsTdId' >
				   
	                         </td>
	                           </tr>
							<tr>
								<td>Expensetype <font color ='red'>*</font></td>
								   <td>
								      <input type='text' name='type'>
							      </td>
							</tr>
							<tr>
								<td>FromDate <font color ='red'>*</font></td>
								   <td>
								      <input type='text' name='fromDate'>
							      </td>
							</tr>
							<tr>
								<td>ToDate <font color ='red'>*</font></td>
								   <td>
								      <input type='text' name='toDate'>
							      </td>
							</tr>
							
							
							<tr>
								<td colspan='2' align='center'>
								
								<input type='button' value ='Expense Report'  class ='button' onclick="javascript:validateExpenseReportForm()">
								</td>
							</tr>
				
	
	
			</table>
			<jsp:include page="Layout/Footer.jsp"></jsp:include>
			 