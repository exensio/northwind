
<%@ page import="com.exensio.northwind.Orders" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'orders.label', default: 'Orders')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-orders" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="orders.orderdate.label" default="Order Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${ordersInstance?.orderdate}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="orders.requireddate.label" default="Required Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${ordersInstance?.requireddate}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="orders.shippeddate.label" default="Shipped Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${ordersInstance?.shippeddate}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="orders.freight.label" default="Freight" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: ordersInstance, field: "freight")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="orders.shipname.label" default="Ship Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: ordersInstance, field: "shipname")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="orders.shipaddress.label" default="Ship Address" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: ordersInstance, field: "shipaddress")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="orders.shipcity.label" default="Ship City" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: ordersInstance, field: "shipcity")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="orders.shipregion.label" default="Ship Region" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: ordersInstance, field: "shipregion")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="orders.shippostalcode.label" default="Ship Postal Code" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: ordersInstance, field: "shippostalcode")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="orders.shipcountry.label" default="Ship Country" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: ordersInstance, field: "shipcountry")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="orders.customers.label" default="Customers" /></td>

				<td valign="top" class="value"><g:link controller="customers" action="show" id="${ordersInstance?.customers?.customerid}">${ordersInstance?.customers?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="orders.employees.label" default="Employees" /></td>
				
				<td valign="top" class="value"><g:link controller="employees" action="show" id="${ordersInstance?.employees?.id}">${ordersInstance?.employees?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="orders.orderdetails.label" default="Order Details" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${ordersInstance.orderdetails.product}" var="o">
						<li><g:link controller="products" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="orders.shippers.label" default="Shippers" /></td>
				
				<td valign="top" class="value"><g:link controller="shippers" action="show" id="${ordersInstance?.shippers?.id}">${ordersInstance?.shippers?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
