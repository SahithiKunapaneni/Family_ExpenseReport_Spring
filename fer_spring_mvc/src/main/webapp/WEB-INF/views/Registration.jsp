<html>
<head>
<title>FER-Registration</title>
<script type="text/javascript" src ="js/All.js"></script> 
 <link  rel ="stylesheet" href ="CSS/All.css"/>
</head>
<script>
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
	if (form.username.value.trim() == '') {
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

</script>
<body>
	<form action ='registration' method ='post' name ='RegistrationForm'>
		<table align='center'border='2'>
			<tr>
				<td colspan='2' align='center' >
				    Registration
				    </td>
			</tr>
			<tr style = 'display:none ;  color :red;' id ='errorsTrId'  >
				<td colspan='2' align='left' id='errorsTdId' >
				   
				    </td>
			</tr>
			<tr>
				<td>Firstname <font color ='red'>*</font></td>
				   <td>
				      <input type='text' name='FirstName'>
			      </td>
			</tr>
			<tr>
				<td>Middlename</td>
				   <td>
				      <input type='text' name='MiddleName'>
			      </td>
			</tr>
			<tr>
				<td>Lastname <font color ='red'>*</font></td>
				   <td>
				      <input type='text' name='lastName'>
			      </td>
			</tr>
			<tr>
				<td>Email <font color ='red'>*</font></td>
				   <td>
				      <input type='text' name='email'>
			      </td>
			</tr>
			
			<tr>
				<td>Username <font color ='red'>*</font></td>
				   <td>
				      <input type='text' name='username'>
			      </td>
			</tr>
			<tr>
				<td>
				  Password <font color ='red'>*</font>
				 </td>
				<td>
				<input type='password' name='password'>
				</td>
			</tr>
			<tr>
				<td>Mobile <font color ='red'>*</font></td>
				   <td>
				      <input type='text' name='mobile'>
			      </td>
			</tr>
			<tr>
				<td colspan='2' align='center'>
				   <input type='button' value='Register' onclick ="javascript:validateRegistrationForm()" class ="button"> 
				</td>
			</tr>
			


		</table>

	</form>
</body>
</html>