<%@page import="com.rs.fer.entity.Address"%>
<%@page import="com.rs.fer.entity.User"%>
<jsp:include page="Layout/Header_LeftFrame.jsp"></jsp:include>

 <link  rel ="stylesheet" href ="CSS/All.css"/>
<%@page import="com.rs.fer.service.impl.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>
<script type="text/javascript" src ="js/All.js"></script>  

<script>
function validateAddressInfoForm() {
	//1 get the form object and intialize errors object
	var form = document.DashboardForm;
	var errors = '';

	// 2 Add the error message if the required field value is empty
	if (form.lineOne.value.trim() == '') {
		errors += 'Please enter  Line One Address<BR>';
	}

	if (form.city.value.trim() == '') {
		errors += 'Please enter city <BR>';
	}
	if (form.state.value.trim() == '') {
		errors += 'Please enter state <BR>';
	}
	if (form.pinCode.value.trim() == '') {
		errors += 'Please enter pinCode <BR>';
	}
	if (form.country.value.trim() == '') {
		errors += 'Please enter country <BR>';
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
		submitForm('review');
	}
}

</script>

		<table align='center'border='2'>
		<tr>
		<td colspan='2' align='center' >
		Address Info
		 </td>
		</tr>
		<tr style = 'display:none ;  color :red;' id ='errorsTrId'  >
		<td colspan='2' align='left' id='errorsTdId' >
		 </td>
		</tr>
		
		<tr>
		<td>Line1<font color ='red'>*</font></td>
		  <td>
		<input type='text' name='lineOne' value='${user.address.lineOne }'>
		</td>
		</tr>
		<tr>
		<td>Line2</td>
		  <td>
		<input type='text' name='lineTwo' value='${user.address.lineTwo }'>
		</td>
		</tr>

		<tr>
		<td>City<font color ='red'>*</font></td>
		  <td>
		<input type='text' name='city' value='${user.address.city }'>
		</td>
		</tr>
		<tr>
		<td>State<font color ='red'>*</font></td>
		  <td>
		<input type='text' name='state' value='${user.address.state }'>
		</td>
		</tr>

		<tr>
		<td>PinCode<font color ='red'>*</font></td>
		  <td>
		<input type='text' name='pinCode' value='${user.address.pinCode }'>
		</td>
		</tr>
		<tr>
		<td>County<font color ='red'>*</font></td>
		  <td>
		<input type='text' name='country' value='${user.address.country }'>
		</td>
		</tr>
		<tr>
		<td colspan='2' align='center' >
		 <input type='button' value='Next' onclick ="javascript:validateAddressInfoForm()" class ="button"> 
		 </td>
		</tr>
		</table>
		




<jsp:include page="Layout/Footer.jsp"></jsp:include>