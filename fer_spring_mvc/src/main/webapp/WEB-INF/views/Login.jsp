<!-- <script type="text/javascript" src ="/webapp/WEB-INF/views/js/All.js"></script>   -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/CSS/All.css">

<html>
<head>
<title>FER-Login</title>
  
   <link  rel ="stylesheet" href ="CSS/All.css"/>
</head>
<script type="text/javascript">
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
</script>
<body>
<font color ='red'>
     ${status  }
 </font>
	<form action ='login' method ='post' name =LoginForm>
		<table align='center'border='2'>
			<tr>
				<td colspan='2' align='center' class ='tableHeader'>
				    Login
				    </td>
			</tr>
			
			<tr style = 'display:none ;  color :red;' id ='errorsTrId'  >
				<td colspan='2' align='left' id='errorsTdId' >
				   
				    </td>
			</tr>
			
			<tr>
				<td>Username<font color ='red'>*</font></td>
				   <td>
				      <input type='text' name='username'>
			      </td>
			</tr>
			<tr>
				<td>
				  Password<font color ='red'>*</font>
				 </td>
				<td>
				<input type='password' name='password'>
				</td>
			</tr>
			<tr>
				<td colspan='2' align='center'>
				    <input type="button" value='Login' onclick ="javascript:validateLoginForm()" class = "button"> 
				   &nbsp;&nbsp;&nbsp;
				   <a href='displayRegistration'>Registration</a>
				</td>
			</tr>


		</table>

	</form>
</body>
</html>