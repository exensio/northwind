
<%@ page import="com.exensio.northwind.Employees" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'employees.label', default: 'Employees')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-employees" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employees.title.label" default="Title" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: employeesInstance, field: "title")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employees.titleofcourtesy.label" default="Titleofcourtesy" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: employeesInstance, field: "titleofcourtesy")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employees.birthdate.label" default="Birthdate" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${employeesInstance?.birthdate}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employees.hiredate.label" default="Hiredate" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${employeesInstance?.hiredate}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employees.address.label" default="Address" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: employeesInstance, field: "address")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employees.city.label" default="City" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: employeesInstance, field: "city")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employees.region.label" default="Region" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: employeesInstance, field: "region")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employees.postalcode.label" default="Postalcode" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: employeesInstance, field: "postalcode")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employees.country.label" default="Country" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: employeesInstance, field: "country")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employees.homephone.label" default="Homephone" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: employeesInstance, field: "homephone")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employees.extension.label" default="Extension" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: employeesInstance, field: "extension")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employees.photo.label" default="Photo" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: employeesInstance, field: "photo")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employees.notes.label" default="Notes" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: employeesInstance, field: "notes")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employees.reportsto.label" default="Reportsto" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: employeesInstance, field: "reportsto")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employees.firstname.label" default="Firstname" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: employeesInstance, field: "firstname")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employees.lastname.label" default="Lastname" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: employeesInstance, field: "lastname")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="employees.orderses.label" default="Orderses" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${employeesInstance.orderses}" var="o">
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
