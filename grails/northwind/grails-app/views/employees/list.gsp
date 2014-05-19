
<%@ page import="com.exensio.northwind.Employees" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'employees.label', default: 'Employees')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-employees" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="title" title="${message(code: 'employees.title.label', default: 'Title')}" />
			
				<g:sortableColumn property="titleofcourtesy" title="${message(code: 'employees.titleofcourtesy.label', default: 'Titleofcourtesy')}" />
			
				<g:sortableColumn property="birthdate" title="${message(code: 'employees.birthdate.label', default: 'Birthdate')}" />
			
				<g:sortableColumn property="hiredate" title="${message(code: 'employees.hiredate.label', default: 'Hiredate')}" />
			
				<g:sortableColumn property="address" title="${message(code: 'employees.address.label', default: 'Address')}" />
			
				<g:sortableColumn property="city" title="${message(code: 'employees.city.label', default: 'City')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${employeesInstanceList}" status="i" var="employeesInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${employeesInstance.id}">${fieldValue(bean: employeesInstance, field: "title")}</g:link></td>
			
				<td>${fieldValue(bean: employeesInstance, field: "titleofcourtesy")}</td>
			
				<td><g:formatDate date="${employeesInstance.birthdate}" /></td>
			
				<td><g:formatDate date="${employeesInstance.hiredate}" /></td>
			
				<td>${fieldValue(bean: employeesInstance, field: "address")}</td>
			
				<td>${fieldValue(bean: employeesInstance, field: "city")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${employeesInstanceCount}" />
	</div>
</section>

</body>

</html>
