
<%@ page import="com.exensio.northwind.Categories" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'categories.label', default: 'Categories')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-categories" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="categoryname" title="${message(code: 'categories.categoryname.label', default: 'Categoryname')}" />
			
				<g:sortableColumn property="description" title="${message(code: 'categories.description.label', default: 'Description')}" />
			
				<g:sortableColumn property="picture" title="${message(code: 'categories.picture.label', default: 'Picture')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${categoriesInstanceList}" status="i" var="categoriesInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${categoriesInstance.id}">${fieldValue(bean: categoriesInstance, field: "categoryname")}</g:link></td>
			
				<td>${fieldValue(bean: categoriesInstance, field: "description")}</td>

				<td><img width="80px" src="${createLink(controller:'categories', action:'viewImage', id:categoriesInstance.id)}" /></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${categoriesInstanceCount}" />
	</div>
</section>

</body>

</html>
