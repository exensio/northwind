
<%@ page import="com.exensio.northwind.Suppliers" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'suppliers.label', default: 'Suppliers')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-suppliers" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="contactname" title="${message(code: 'suppliers.contactname.label', default: 'Contactname')}" />
			
				<g:sortableColumn property="contacttitle" title="${message(code: 'suppliers.contacttitle.label', default: 'Contacttitle')}" />
			
				<g:sortableColumn property="address" title="${message(code: 'suppliers.address.label', default: 'Address')}" />
			
				<g:sortableColumn property="city" title="${message(code: 'suppliers.city.label', default: 'City')}" />
			
				<g:sortableColumn property="region" title="${message(code: 'suppliers.region.label', default: 'Region')}" />
			
				<g:sortableColumn property="postalcode" title="${message(code: 'suppliers.postalcode.label', default: 'Postalcode')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${suppliersInstanceList}" status="i" var="suppliersInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${suppliersInstance.id}">${fieldValue(bean: suppliersInstance, field: "contactname")}</g:link></td>
			
				<td>${fieldValue(bean: suppliersInstance, field: "contacttitle")}</td>
			
				<td>${fieldValue(bean: suppliersInstance, field: "address")}</td>
			
				<td>${fieldValue(bean: suppliersInstance, field: "city")}</td>
			
				<td>${fieldValue(bean: suppliersInstance, field: "region")}</td>
			
				<td>${fieldValue(bean: suppliersInstance, field: "postalcode")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${suppliersInstanceCount}" />
	</div>
</section>

</body>

</html>
