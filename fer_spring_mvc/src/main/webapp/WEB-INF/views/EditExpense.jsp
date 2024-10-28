<%@page import="com.rs.fer.entity.Expense"%>
<%@page import="com.rs.fer.service.impl.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>

<jsp:include page="Layout/Header_LeftFrame.jsp"></jsp:include>

<script type="text/javascript" src ="js/All.js"></script>  
  
 <link  rel ="stylesheet" href ="CSS/All.css"/>

<script>
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
		submitForm('editExpense');
	}
}


</script>


   
        <table align="center" border="2">
            <tr>
                <td colspan="2" align="center">EditExpense</td>
            </tr>
            
            <tr style="display:none; color:red;" id="errorsTrId">
                <td colspan="2" align="left" id="errorsTdId"></td>
            </tr>
            
            <tr>
                <td>Expense Type<font color="red">*</font></td>
                <td><input type="text" name="type" value='${expense.type}' /></td>
            </tr>
            
            <tr>
                <td>Date<font color="red">*</font></td>
                <td><input type="text" name="date" value='${expense.date}' /></td>
            </tr>
            
            <tr>
                <td>Price<font color="red">*</font></td>
                <td><input type="text" name="price" value='${expense.price}' /></td>
            </tr>
            
            <tr>
                <td>Number Of Items<font color="red">*</font></td>
                <td><input type="text" name="numberOfItems" value='${expense.numberOfItems}' /></td>
            </tr>
            
            <tr>
                <td>Total<font color="red">*</font></td>
                <td><input type="text" name="total" value='${expense.total}' /></td>
            </tr>
            
            <tr>
                <td>By Whom<font color="red">*</font></td>
                <td><input type="text" name="byWhom" value='${expense.byWhom}' /></td>
            </tr>
            
            <tr>
                <td colspan="2" align="center">
                    <input type='button' value='Update Expense' onclick ="javascript:validateEditExpenseForm()" class ="button"> 
                </td>
            </tr>
        </table>
    


<jsp:include page="Layout/Footer.jsp"></jsp:include>