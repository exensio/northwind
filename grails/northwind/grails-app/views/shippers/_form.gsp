<%@ page import="com.exensio.northwind.Shippers" %>



			<div class="${hasErrors(bean: shippersInstance, field: 'phone', 'error')} ">
				<label for="phone" class="control-label"><g:message code="shippers.phone.label" default="Phone" /></label>
				<div>
					<g:textField class="form-control" name="phone" value="${shippersInstance?.phone}"/>
					<span class="help-inline">${hasErrors(bean: shippersInstance, field: 'phone', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: shippersInstance, field: 'companyname', 'error')} ">
				<label for="companyname" class="control-label"><g:message code="shippers.companyname.label" default="Companyname" /></label>
				<div>
					<g:textField class="form-control" name="companyname" value="${shippersInstance?.companyname}"/>
					<span class="help-inline">${hasErrors(bean: shippersInstance, field: 'companyname', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: shippersInstance, field: 'orderses', 'error')} ">
				<label for="orderses" class="control-label"><g:message code="shippers.orderses.label" default="Orderses" /></label>
				<div>
					
<ul class="one-to-many">
<g:each in="${shippersInstance?.orderses?}" var="o">
    <li><g:link controller="orders" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="orders" action="create" params="['shippers.id': shippersInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'orders.label', default: 'Orders')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: shippersInstance, field: 'orderses', 'error')}</span>
				</div>
			</div>

