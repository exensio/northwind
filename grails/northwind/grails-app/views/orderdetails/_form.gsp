<%@ page import="com.exensio.northwind.Orderdetails" %>



			<div class="${hasErrors(bean: orderdetailsInstance, field: 'unitprice', 'error')} required">
				<label for="unitprice" class="control-label"><g:message code="orderdetails.unitprice.label" default="Unitprice" /><span class="required-indicator">*</span></label>
				<div>
					<g:field class="form-control" name="unitprice" value="${fieldValue(bean: orderdetailsInstance, field: 'unitprice')}" required=""/>
					<span class="help-inline">${hasErrors(bean: orderdetailsInstance, field: 'unitprice', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: orderdetailsInstance, field: 'discount', 'error')} required">
				<label for="discount" class="control-label"><g:message code="orderdetails.discount.label" default="Discount" /><span class="required-indicator">*</span></label>
				<div>
					<g:field class="form-control" name="discount" value="${fieldValue(bean: orderdetailsInstance, field: 'discount')}" required=""/>
					<span class="help-inline">${hasErrors(bean: orderdetailsInstance, field: 'discount', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: orderdetailsInstance, field: 'order', 'error')} required">
				<label for="order" class="control-label"><g:message code="orderdetails.order.label" default="Order" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" id="order" name="order.id" from="${com.exensio.northwind.Orders.list()}" optionKey="id" required="" value="${orderdetailsInstance?.order?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: orderdetailsInstance, field: 'order', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: orderdetailsInstance, field: 'product', 'error')} required">
				<label for="product" class="control-label"><g:message code="orderdetails.product.label" default="Product" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" id="product" name="product.id" from="${com.exensio.northwind.Products.list()}" optionKey="id" required="" value="${orderdetailsInstance?.product?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: orderdetailsInstance, field: 'product', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: orderdetailsInstance, field: 'quantity', 'error')} required">
				<label for="quantity" class="control-label"><g:message code="orderdetails.quantity.label" default="Quantity" /><span class="required-indicator">*</span></label>
				<div>
					<g:field class="form-control" name="quantity" type="number" value="${orderdetailsInstance.quantity}" required=""/>
					<span class="help-inline">${hasErrors(bean: orderdetailsInstance, field: 'quantity', 'error')}</span>
				</div>
			</div>

