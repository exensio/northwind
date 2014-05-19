
<%@ page import="com.exensio.northwind.Categories" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'categories.label', default: 'Categories')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-categories" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="categories.categoryname.label" default="Categoryname" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: categoriesInstance, field: "categoryname")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="categories.description.label" default="Description" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: categoriesInstance, field: "description")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="categories.picture.label" default="Picture" /></td>
                <td><img width="80px" src="${createLink(controller:'categories', action:'viewImage', id:categoriesInstance.id)}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="categories.productses.label" default="Productses" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${categoriesInstance.productses}" var="p">
						<li><g:link controller="products" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
