<jsp:include page="Layout/Header_LeftFrame.jsp"></jsp:include>
 <link  rel ="stylesheet" href ="CSS/All.css"/>
<script type="text/javascript" src ="js/All.js"></script> 
<script>
function validateResetPasswordForm() {
	//1 get the form object and intialize errors object
	var form = document.DashboardForm;
	var errors = '';

	// 2 Add the error message if the required field value is empty
	if (form.currentPassword.value.trim() == '') {
		errors += 'Please enter  Current Password<BR>';
	}
	if (form.newPassword.value.trim() == '') {
		errors += 'Please enter  new password<BR>';
	}
	if (form.confirmNewPassword.value.trim() == '') {
		errors += 'Please enter Confirm New Password <BR>';
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
		submitForm('resetPassword');
	}
}

</script>
				      <table align='center'border='2'>
							<tr>
								<td colspan='2' align='center' >
								    Update Password
								    </td>
							</tr>
							<tr style = 'display:none ;  color :red;' id ='errorsTrId'  >
	                       <td colspan='2' align='left' id='errorsTdId' >
				   
	                            </td>
	                         </tr>
							<tr>
								<td>Current Password<font color ='red'>*</font></td>
								   <td>
								      <input type='text' name='currentPassword'></td>
							</tr>
							<tr>
								<td>
								  New Password<font color ='red'>*</font>
								 </td>
								<td>
								<input type='password' name='newPassword'>
								</td>
							</tr>
							<tr>
								<td>
								  Confirm New Password<font color ='red'>*</font>
								 </td>
								<td>
								<input type='password' name='confirmNewPassword'>
								</td>
							</tr>
							<tr>
								<td colspan='2' align='center'>
								    
								   &nbsp;&nbsp;&nbsp;
								   <input type='button' value ='Update'  class ='button' onclick="javascript:validateResetPasswordForm()">
								</td>
							</tr>


		</table>
		
				<jsp:include page="Layout/Footer.jsp"></jsp:include>
			