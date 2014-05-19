
<%@ page import="com.exensio.northwind.Customers" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'customers.label', default: 'Customers')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-customers" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="contactname" title="${message(code: 'customers.contactname.label', default: 'Contactname')}" />
			
				<g:sortableColumn property="contacttitle" title="${message(code: 'customers.contacttitle.label', default: 'Contacttitle')}" />
			
				<g:sortableColumn property="address" title="${message(code: 'customers.address.label', default: 'Address')}" />
			
				<g:sortableColumn property="city" title="${message(code: 'customers.city.label', default: 'City')}" />
			
				<g:sortableColumn property="region" title="${message(code: 'customers.region.label', default: 'Region')}" />
			
				<g:sortableColumn property="postalcode" title="${message(code: 'customers.postalcode.label', default: 'Postalcode')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${customersInstanceList}" status="i" var="customersInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td>${fieldValue(bean: customersInstance, field: "contactname")}</td>
			
				<td>${fieldValue(bean: customersInstance, field: "contacttitle")}</td>
			
				<td>${fieldValue(bean: customersInstance, field: "address")}</td>
			
				<td>${fieldValue(bean: customersInstance, field: "city")}</td>
			
				<td>${fieldValue(bean: customersInstance, field: "region")}</td>
			
				<td>${fieldValue(bean: customersInstance, field: "postalcode")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${customersInstanceCount}" />
	</div>
</section>

</body>

</html>
