
<%@ page import="com.exensio.northwind.Orderdetails" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'orderdetails.label', default: 'Orderdetails')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-orderdetails" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="orderdetails.unitprice.label" default="Unitprice" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: orderdetailsInstance, field: "unitprice")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="orderdetails.discount.label" default="Discount" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: orderdetailsInstance, field: "discount")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="orderdetails.order.label" default="Order" /></td>
				
				<td valign="top" class="value"><g:link controller="orders" action="show" id="${orderdetailsInstance?.order?.id}">${orderdetailsInstance?.order?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="orderdetails.product.label" default="Product" /></td>
				
				<td valign="top" class="value"><g:link controller="products" action="show" id="${orderdetailsInstance?.product?.id}">${orderdetailsInstance?.product?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="orderdetails.quantity.label" default="Quantity" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: orderdetailsInstance, field: "quantity")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
