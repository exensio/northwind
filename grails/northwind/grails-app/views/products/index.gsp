
<%@ page import="com.exensio.northwind.Products" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'products.label', default: 'Products')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-products" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="quantityperunit" title="${message(code: 'products.quantityperunit.label', default: 'Quantityperunit')}" />
			
				<g:sortableColumn property="unitprice" title="${message(code: 'products.unitprice.label', default: 'Unitprice')}" />
			
				<g:sortableColumn property="unitsinstock" title="${message(code: 'products.unitsinstock.label', default: 'Unitsinstock')}" />
			
				<g:sortableColumn property="unitsonorder" title="${message(code: 'products.unitsonorder.label', default: 'Unitsonorder')}" />
			
				<g:sortableColumn property="reorderlevel" title="${message(code: 'products.reorderlevel.label', default: 'Reorderlevel')}" />
			
				<g:sortableColumn property="discontinued" title="${message(code: 'products.discontinued.label', default: 'Discontinued')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${productsInstanceList}" status="i" var="productsInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${productsInstance.id}">${fieldValue(bean: productsInstance, field: "quantityperunit")}</g:link></td>
			
				<td>${fieldValue(bean: productsInstance, field: "unitprice")}</td>
			
				<td>${fieldValue(bean: productsInstance, field: "unitsinstock")}</td>
			
				<td>${fieldValue(bean: productsInstance, field: "unitsonorder")}</td>
			
				<td>${fieldValue(bean: productsInstance, field: "reorderlevel")}</td>
			
				<td><g:formatBoolean boolean="${productsInstance.discontinued}" /></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${productsInstanceCount}" />
	</div>
</section>

</body>

</html>
