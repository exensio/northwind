<%@ page import="com.exensio.northwind.Products" %>



			<div class="${hasErrors(bean: productsInstance, field: 'quantityperunit', 'error')} ">
				<label for="quantityperunit" class="control-label"><g:message code="products.quantityperunit.label" default="Quantityperunit" /></label>
				<div>
					<g:textField class="form-control" name="quantityperunit" value="${productsInstance?.quantityperunit}"/>
					<span class="help-inline">${hasErrors(bean: productsInstance, field: 'quantityperunit', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: productsInstance, field: 'unitprice', 'error')} ">
				<label for="unitprice" class="control-label"><g:message code="products.unitprice.label" default="Unitprice" /></label>
				<div>
					<g:field class="form-control" name="unitprice" value="${fieldValue(bean: productsInstance, field: 'unitprice')}"/>
					<span class="help-inline">${hasErrors(bean: productsInstance, field: 'unitprice', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: productsInstance, field: 'unitsinstock', 'error')} ">
				<label for="unitsinstock" class="control-label"><g:message code="products.unitsinstock.label" default="Unitsinstock" /></label>
				<div>
					<g:field class="form-control" name="unitsinstock" type="number" value="${productsInstance.unitsinstock}"/>
					<span class="help-inline">${hasErrors(bean: productsInstance, field: 'unitsinstock', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: productsInstance, field: 'unitsonorder', 'error')} ">
				<label for="unitsonorder" class="control-label"><g:message code="products.unitsonorder.label" default="Unitsonorder" /></label>
				<div>
					<g:field class="form-control" name="unitsonorder" type="number" value="${productsInstance.unitsonorder}"/>
					<span class="help-inline">${hasErrors(bean: productsInstance, field: 'unitsonorder', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: productsInstance, field: 'reorderlevel', 'error')} ">
				<label for="reorderlevel" class="control-label"><g:message code="products.reorderlevel.label" default="Reorderlevel" /></label>
				<div>
					<g:field class="form-control" name="reorderlevel" type="number" value="${productsInstance.reorderlevel}"/>
					<span class="help-inline">${hasErrors(bean: productsInstance, field: 'reorderlevel', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: productsInstance, field: 'discontinued', 'error')} ">
				<label for="discontinued" class="control-label"><g:message code="products.discontinued.label" default="Discontinued" /></label>
				<div>
					<bs:checkBox name="discontinued" value="${productsInstance?.discontinued}" />
					<span class="help-inline">${hasErrors(bean: productsInstance, field: 'discontinued', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: productsInstance, field: 'categories', 'error')} required">
				<label for="categories" class="control-label"><g:message code="products.categories.label" default="Categories" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" id="categories" name="categories.id" from="${com.exensio.northwind.Categories.list()}" optionKey="id" required="" value="${productsInstance?.categories?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: productsInstance, field: 'categories', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: productsInstance, field: 'productname', 'error')} ">
				<label for="productname" class="control-label"><g:message code="products.productname.label" default="Productname" /></label>
				<div>
					<g:textField class="form-control" name="productname" value="${productsInstance?.productname}"/>
					<span class="help-inline">${hasErrors(bean: productsInstance, field: 'productname', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: productsInstance, field: 'suppliers', 'error')} required">
				<label for="suppliers" class="control-label"><g:message code="products.suppliers.label" default="Suppliers" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" id="suppliers" name="suppliers.id" from="${com.exensio.northwind.Suppliers.list()}" optionKey="id" required="" value="${productsInstance?.suppliers?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: productsInstance, field: 'suppliers', 'error')}</span>
				</div>
			</div>

