
<%@ page import="com.exensio.northwind.Products" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'products.label', default: 'Products')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-products" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="products.quantityperunit.label" default="Quantityperunit" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: productsInstance, field: "quantityperunit")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="products.unitprice.label" default="Unitprice" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: productsInstance, field: "unitprice")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="products.unitsinstock.label" default="Unitsinstock" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: productsInstance, field: "unitsinstock")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="products.unitsonorder.label" default="Unitsonorder" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: productsInstance, field: "unitsonorder")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="products.reorderlevel.label" default="Reorderlevel" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: productsInstance, field: "reorderlevel")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="products.discontinued.label" default="Discontinued" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${productsInstance?.discontinued}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="products.categories.label" default="Categories" /></td>
				
				<td valign="top" class="value"><g:link controller="categories" action="show" id="${productsInstance?.categories?.id}">${productsInstance?.categories?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="products.productname.label" default="Productname" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: productsInstance, field: "productname")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="products.suppliers.label" default="Suppliers" /></td>
				
				<td valign="top" class="value"><g:link controller="suppliers" action="show" id="${productsInstance?.suppliers?.id}">${productsInstance?.suppliers?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
