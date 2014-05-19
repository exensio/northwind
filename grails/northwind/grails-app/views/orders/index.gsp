
<%@ page import="com.exensio.northwind.Orders" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'orders.label', default: 'Orders')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-orders" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="orderdate" title="${message(code: 'orders.orderdate.label', default: 'Order Date')}" />
			
				<g:sortableColumn property="requireddate" title="${message(code: 'orders.requireddate.label', default: 'Required Date')}" />
			
				<g:sortableColumn property="shippeddate" title="${message(code: 'orders.shippeddate.label', default: 'Shipped Date')}" />
			
				<g:sortableColumn property="freight" title="${message(code: 'orders.freight.label', default: 'Freight')}" />
			
				<g:sortableColumn property="shipname" title="${message(code: 'orders.shipname.label', default: 'Ship Name')}" />
			
				<g:sortableColumn property="shipaddress" title="${message(code: 'orders.shipaddress.label', default: 'Ship Address')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${ordersInstanceList}" status="i" var="ordersInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${ordersInstance.id}">${fieldValue(bean: ordersInstance, field: "orderdate")}</g:link></td>
			
				<td><g:formatDate date="${ordersInstance.requireddate}" /></td>
			
				<td><g:formatDate date="${ordersInstance.shippeddate}" /></td>
			
				<td>${fieldValue(bean: ordersInstance, field: "freight")}</td>
			
				<td>${fieldValue(bean: ordersInstance, field: "shipname")}</td>
			
				<td>${fieldValue(bean: ordersInstance, field: "shipaddress")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${ordersInstanceCount}" />
	</div>
</section>

</body>

</html>
