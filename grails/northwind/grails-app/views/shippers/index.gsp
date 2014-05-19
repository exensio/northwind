
<%@ page import="com.exensio.northwind.Shippers" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'shippers.label', default: 'Shippers')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-shippers" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="phone" title="${message(code: 'shippers.phone.label', default: 'Phone')}" />
			
				<g:sortableColumn property="companyname" title="${message(code: 'shippers.companyname.label', default: 'Companyname')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${shippersInstanceList}" status="i" var="shippersInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${shippersInstance.id}">${fieldValue(bean: shippersInstance, field: "phone")}</g:link></td>
			
				<td>${fieldValue(bean: shippersInstance, field: "companyname")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${shippersInstanceCount}" />
	</div>
</section>

</body>

</html>
