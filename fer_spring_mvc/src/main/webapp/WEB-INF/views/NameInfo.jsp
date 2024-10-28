<%@page import="com.rs.fer.entity.User"%>
<jsp:include page="Layout/Header_LeftFrame.jsp"></jsp:include>

 <link  rel ="stylesheet" href ="CSS/All.css"/>
<%@page import="com.rs.fer.service.impl.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>

<script type="text/javascript" src ="js/All.js"></script>  
<script>
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
		submitForm('contactInfo');
	}
}
</script>
  
		
		
		<table align='center'border='2'>
		<tr>
		<td colspan='2' align='center' >
		Name Info
		 </td>
		</tr>
		<tr style='display: none; color: red;' id='errorsTrId'>
		<td colspan='2' id='errorsTdId'></td>
	   </tr>
		
		
		<tr>
		<td>First Name<font color ='red'>*</font></td>
		  <td>
		<input type='text' name='firstName' value='${user.firstName }'>
		</td>
		</tr>
		<tr>
		<td>Middle Name</td>
		  <td>
		<input type='text' name='middleName' value='${user.middleName }'>
		</td>
		</tr>
		<tr>
		<td>Last Name<font color ='red'>*</font></td>
		  <td>
		<input type='text' name='lastName' value='${user.lastName }'>
		</td>
		</tr>
		
		
		<tr>
		<td colspan='2' align='center' >
           <input type='button' value='Next' onclick ="javascript:validateNameInfoForm()" class ="button"> 
		 </td>
		</tr>
		</table>
		




<jsp:include page="Layout/Footer.jsp"></jsp:include>