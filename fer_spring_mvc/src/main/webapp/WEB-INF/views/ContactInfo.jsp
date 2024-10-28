<%@page import="com.rs.fer.entity.User"%>
<jsp:include page="Layout/Header_LeftFrame.jsp"></jsp:include>


<%@page import="com.rs.fer.service.impl.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>

<script type="text/javascript" src ="js/All.js"></script> 
 <link  rel ="stylesheet" href ="CSS/All.css"/> 
<script>
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
		submitForm('addressInfo')
	}
}


</script>
		
		<table align='center'border='2'>
		<tr>
		<td colspan='2' align='center' >
		Contact Info
		 </td>
		</tr>
		
		<tr style = 'display:none ;  color :red;' id ='errorsTrId'  >
		<td colspan='2' align='left' id='errorsTdId' >
		 </td>
		</tr>
		
		
		<tr>
		<td>Email<font color ='red'>*</font></td>
		  <td>
		<input type='text' name='email' value='${user.email }'>
		</td>
		</tr>
		<tr>
		<td>Mobile<font color ='red'>*</font></td>
		  <td>
		<input type='text' name='mobile' value='${user.mobile }'>
		</td>
		</tr>
		
		
		<tr>
		<td colspan='2' align='center' >
		 <input type='button' value='Next' onclick ="javascript:validateContactInfoForm()" class ="button">
		 </td>
		</tr>
		</table>
	




<jsp:include page="Layout/Footer.jsp"></jsp:include>