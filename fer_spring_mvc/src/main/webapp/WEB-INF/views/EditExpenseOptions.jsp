<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
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
		submitForm('showEditExpense');
	}
}

</script>
<html>
<head>
<title>FER-Edit Expense Options</title>
<jsp:include page="Layout/Header_LeftFrame.jsp"></jsp:include>

<link rel="stylesheet" href="css/FER.css">
</head>
<body>
	<div style="color: red" id='errorsTdId'>${status }</div>
	<table border="0">
	<tr style='display:none; color:red;' id='errorsTrId'>
        <td colspan='2' align='left' id='errorsTdId'>
            ${errors}
        </td>
    </tr>
		<c:choose>
			<c:when test="${expenses.size() == 0 }">
          No expense found to edit.....!
          </c:when>

			<c:otherwise>
				<table border='2' align="center" width='100' height='200'>
					<tr height="20">
						<td colspan='2' align='center' class='tableHeader'>Edit
							Expense Options</td>
					</tr>
					<tr>
						<td>Expense ID <font color='red'>*</font></td>

						<td><select name="expenseId">
								<option value=''>Please select Expense Id ></option>
								<c:forEach var="expense" items="${expenses }">
									<option value='${expense.id }'>${expense.id }--${expense.type }--${expense.date }--${expense.total }--${expense.byWhom}>
									</option>
								</c:forEach>
						</select></td>
					</tr>
					<tr>
						<td align="center" colspan="2">
				<input type='button' value='Next' onclick ="javascript:validateEditExpenseOptionsForm()" class ="button"> 
					</tr>

				</table>
			</c:otherwise>
		</c:choose>
</body>
</html>

<jsp:include page="Layout/Footer.jsp"></jsp:include>