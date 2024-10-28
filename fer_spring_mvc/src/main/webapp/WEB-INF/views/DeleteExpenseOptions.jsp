<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>FER-Delete Expense Options</title>
<jsp:include page="Layout/Header_LeftFrame.jsp"></jsp:include>

<link rel="stylesheet" href="css/FER.css">
</head>
<body>
	<div style="color: red" id='errorsTdId'>${status }</div>
	<table border="0">
		<c:choose>
			<c:when test="${expenses.size() == 0 }">
          No expense found to edit.....!
          </c:when>

			<c:otherwise>
				<table border='2' align="center" width='100' height='200'>
					<tr height="20">
						<td colspan='2' align='center' class='tableHeader'>Delete
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
						<td align="center" colspan="2"><input type='submit'
							value='Next' class='button'
							onclick="javascript: submitForm('deleteExpense')"></td>
					</tr>

				</table>
			</c:otherwise>
		</c:choose>
</body>
</html>

<jsp:include page="Layout/Footer.jsp"></jsp:include>