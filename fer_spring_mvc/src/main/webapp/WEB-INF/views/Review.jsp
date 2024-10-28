<%@page import="com.rs.fer.entity.Address"%>
<%@page import="com.rs.fer.entity.User"%>
<jsp:include page="Layout/Header_LeftFrame.jsp"></jsp:include>


 <link  rel ="stylesheet" href ="CSS/All.css"/>


		<table align='center'border='2'>
		<tr>
		<td colspan='2' align='center' >
		Review
		 </td>
		</tr>
		<tr>
		<td>First Name</td>
		  <td>
		<input type='text' name='firstName' value='${user.firstName }'disabled ='true'>
		</td>
		</tr>
		<tr>
		<td>Middle Name</td>
		  <td>
		<input type='text' name='middleName' value='${user.middleName }'disabled ='true'>
		</td>
		</tr>
		<tr>
		<td>Last Name</td>
		  <td>
		<input type='text' name='lastName' value='${user.lastName }'disabled ='true'>
		</td>
		</tr>

		<tr>
		<td>Email</td>
		  <td>
		<input type='text' name='email' value='${user.email }'disabled ='true'>
		</td>
		</tr>
		<tr>
		<td>Mobile</td>
		  <td>
		<input type='text' name='mobile' value='${user.mobile }'disabled ='true'>
		</td>
		</tr>
		<tr>
		<td>Line1</td>
		  <td>
		<input type='text' name='lineOne' value='${user.address.lineOne }'disabled ='true'>
		</td>
		</tr>
		<tr>
		<td>Line2</td>
		  <td>
		<input type='text' name='lineTwo' value='${user.address.lineTwo }'disabled ='true'>
		</td>
		</tr>

		<tr>
		<td>City</td>
		  <td>
		<input type='text' name='city' value='${user.address.city }'disabled ='true'>
		</td>
		</tr>
		<tr>
		<td>State</td>
		  <td>
		<input type='text' name='state' value='${user.address.state }'disabled ='true'>
		</td>
		</tr>

		<tr>
		<td>PinCode</td>
		  <td>
		<input type='text' name='pinCode' value='${user.address.pinCode }'disabled ='true'>
		</td>
		</tr>
		<tr>
		<td>County</td>
		  <td>
		<input type='text' name='country' value='${user.address.country }'disabled ='true'>
		</td>
		</tr>
		<tr>
		<td colspan='2' align='center' >
		<input type='button' value ='Update Profile' onclick="submitForm('updateProfile')" class ="button">
		 </td>
		</tr>
		</table>
	




<jsp:include page="Layout/Footer.jsp"></jsp:include>