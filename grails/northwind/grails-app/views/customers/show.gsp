
<%@ page import="com.exensio.northwind.Customers" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'customers.label', default: 'Customers')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-customers" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="customers.contactname.label" default="Contactname" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: customersInstance, field: "contactname")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="customers.contacttitle.label" default="Contacttitle" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: customersInstance, field: "contacttitle")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="customers.address.label" default="Address" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: customersInstance, field: "address")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="customers.city.label" default="City" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: customersInstance, field: "city")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="customers.region.label" default="Region" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: customersInstance, field: "region")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="customers.postalcode.label" default="Postalcode" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: customersInstance, field: "postalcode")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="customers.country.label" default="Country" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: customersInstance, field: "country")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="customers.phone.label" default="Phone" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: customersInstance, field: "phone")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="customers.fax.label" default="Fax" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: customersInstance, field: "fax")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="customers.companyname.label" default="Companyname" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: customersInstance, field: "companyname")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="customers.customerid.label" default="Customerid" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: customersInstance, field: "customerid")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="customers.orderses.label" default="Orderses" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${customersInstance.orderses}" var="o">
						<li><g:link controller="orders" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
