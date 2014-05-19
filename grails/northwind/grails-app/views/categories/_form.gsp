<%@ page import="com.exensio.northwind.Categories" %>



			<div class="${hasErrors(bean: categoriesInstance, field: 'categoryname', 'error')} ">
				<label for="categoryname" class="control-label"><g:message code="categories.categoryname.label" default="Categoryname" /></label>
				<div>
					<g:textField class="form-control" name="categoryname" value="${categoriesInstance?.categoryname}"/>
					<span class="help-inline">${hasErrors(bean: categoriesInstance, field: 'categoryname', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: categoriesInstance, field: 'description', 'error')} ">
				<label for="description" class="control-label"><g:message code="categories.description.label" default="Description" /></label>
				<div>
					<g:textField class="form-control" name="description" value="${categoriesInstance?.description}"/>
					<span class="help-inline">${hasErrors(bean: categoriesInstance, field: 'description', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: categoriesInstance, field: 'picture', 'error')} ">
				<label for="picture" class="control-label"><g:message code="categories.picture.label" default="Picture" /></label>
				<div>
					<input type="file" id="picture" name="picture" />
					<span class="help-inline">${hasErrors(bean: categoriesInstance, field: 'picture', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: categoriesInstance, field: 'productses', 'error')} ">
				<label for="productses" class="control-label"><g:message code="categories.productses.label" default="Productses" /></label>
				<div>
					
<ul class="one-to-many">
<g:each in="${categoriesInstance?.productses?}" var="p">
    <li><g:link controller="products" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="products" action="create" params="['categories.id': categoriesInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'products.label', default: 'Products')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: categoriesInstance, field: 'productses', 'error')}</span>
				</div>
			</div>

