<jsp:include page="Layout/Header_LeftFrame.jsp"/>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


	
		
			<c:if test="${expenses.size() <=0  }">
				No expense found in this search criteria ...!
			</c:if>
			
			<c:if test ="${expenses.size() >=0 }">
			<table border='2' align='center' >
				<tr height="20">
				
					<td align='center'>ID</td>
					<td align='center'>Expense Type</td>
					<td align='center'>Date</td>
					<td align='center'>Price</td>
					<td align='center'>NoofItems</td>
					<td align='center'>Total</td>
					<td align='center'>ByWhom</td>
					
				</tr>
				
				<c:forEach var="expense" items="${expenses }">
					<tr>
					<td align='center'>${expense.id }</td>
					<td align='center'>${expense.type}</td>
					<td align='center'>${expense.date }</td>
					<td align='center'>${expense.price }</td>
					<td align='center'>${expense.numberOfItems }</td>
					<td align='center'>${expense.total }</td>
					<td align='center'>${expense.byWhom }</td>
					</tr>
				</c:forEach>
			</table>
			</c:if>
			<jsp:include page="Layout/Footer.jsp"/>
			