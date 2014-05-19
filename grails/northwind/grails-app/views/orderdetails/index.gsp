
<%@ page import="com.exensio.northwind.Orderdetails" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'orderdetails.label', default: 'Orderdetails')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-orderdetails" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="unitprice" title="${message(code: 'orderdetails.unitprice.label', default: 'Unitprice')}" />
			
				<g:sortableColumn property="discount" title="${message(code: 'orderdetails.discount.label', default: 'Discount')}" />
			
				<th><g:message code="orderdetails.order.label" default="Order" /></th>
			
				<th><g:message code="orderdetails.product.label" default="Product" /></th>
			
				<g:sortableColumn property="quantity" title="${message(code: 'orderdetails.quantity.label', default: 'Quantity')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${orderdetailsInstanceList}" status="i" var="orderdetailsInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${orderdetailsInstance.id}">${fieldValue(bean: orderdetailsInstance, field: "unitprice")}</g:link></td>
			
				<td>${fieldValue(bean: orderdetailsInstance, field: "discount")}</td>
			
				<td>${fieldValue(bean: orderdetailsInstance, field: "order")}</td>
			
				<td>${fieldValue(bean: orderdetailsInstance, field: "product")}</td>
			
				<td>${fieldValue(bean: orderdetailsInstance, field: "quantity")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${orderdetailsInstanceCount}" />
	</div>
</section>

</body>

</html>
