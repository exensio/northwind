<%@ page import="com.exensio.northwind.Orders" %>



			<div class="${hasErrors(bean: ordersInstance, field: 'orderdate', 'error')} ">
				<label for="orderdate" class="control-label"><g:message code="orders.orderdate.label" default="Order Date" /></label>
				<div>
					<bs:datePicker name="orderdate" precision="day"  value="${ordersInstance?.orderdate}" default="none" noSelection="['': '']" />
					<span class="help-inline">${hasErrors(bean: ordersInstance, field: 'orderdate', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: ordersInstance, field: 'requireddate', 'error')} ">
				<label for="requireddate" class="control-label"><g:message code="orders.requireddate.label" default="Required Date" /></label>
				<div>
					<bs:datePicker name="requireddate" precision="day"  value="${ordersInstance?.requireddate}" default="none" noSelection="['': '']" />
					<span class="help-inline">${hasErrors(bean: ordersInstance, field: 'requireddate', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: ordersInstance, field: 'shippeddate', 'error')} ">
				<label for="shippeddate" class="control-label"><g:message code="orders.shippeddate.label" default="Shipped Date" /></label>
				<div>
					<bs:datePicker name="shippeddate" precision="day"  value="${ordersInstance?.shippeddate}" default="none" noSelection="['': '']" />
					<span class="help-inline">${hasErrors(bean: ordersInstance, field: 'shippeddate', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: ordersInstance, field: 'freight', 'error')} ">
				<label for="freight" class="control-label"><g:message code="orders.freight.label" default="Freight" /></label>
				<div>
					<g:field class="form-control" name="freight" value="${fieldValue(bean: ordersInstance, field: 'freight')}"/>
					<span class="help-inline">${hasErrors(bean: ordersInstance, field: 'freight', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: ordersInstance, field: 'shipname', 'error')} ">
				<label for="shipname" class="control-label"><g:message code="orders.shipname.label" default="Ship Name" /></label>
				<div>
					
					<span class="help-inline">${hasErrors(bean: ordersInstance, field: 'shipname', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: ordersInstance, field: 'shipaddress', 'error')} ">
				<label for="shipaddress" class="control-label"><g:message code="orders.shipaddress.label" default="Ship Address" /></label>
				<div>
					
					<span class="help-inline">${hasErrors(bean: ordersInstance, field: 'shipaddress', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: ordersInstance, field: 'shipcity', 'error')} ">
				<label for="shipcity" class="control-label"><g:message code="orders.shipcity.label" default="Ship City" /></label>
				<div>
					
					<span class="help-inline">${hasErrors(bean: ordersInstance, field: 'shipcity', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: ordersInstance, field: 'shipregion', 'error')} ">
				<label for="shipregion" class="control-label"><g:message code="orders.shipregion.label" default="Ship Region" /></label>
				<div>
					
					<span class="help-inline">${hasErrors(bean: ordersInstance, field: 'shipregion', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: ordersInstance, field: 'shippostalcode', 'error')} ">
				<label for="shippostalcode" class="control-label"><g:message code="orders.shippostalcode.label" default="Ship Postal Code" /></label>
				<div>
					
					<span class="help-inline">${hasErrors(bean: ordersInstance, field: 'shippostalcode', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: ordersInstance, field: 'shipcountry', 'error')} ">
				<label for="shipcountry" class="control-label"><g:message code="orders.shipcountry.label" default="Ship Country" /></label>
				<div>
					
					<span class="help-inline">${hasErrors(bean: ordersInstance, field: 'shipcountry', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: ordersInstance, field: 'customers', 'error')} required">
				<label for="customers" class="control-label"><g:message code="orders.customers.label" default="Customers" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" id="customers" name="customers.id" from="${com.exensio.northwind.Customers.list()}" optionKey="id" required="" value="${ordersInstance?.customers?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: ordersInstance, field: 'customers', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: ordersInstance, field: 'employees', 'error')} required">
				<label for="employees" class="control-label"><g:message code="orders.employees.label" default="Employees" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" id="employees" name="employees.id" from="${com.exensio.northwind.Employees.list()}" optionKey="id" required="" value="${ordersInstance?.employees?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: ordersInstance, field: 'employees', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: ordersInstance, field: 'orderdetails', 'error')} ">
				<label for="orderdetails" class="control-label"><g:message code="orders.orderdetails.label" default="Order Detailses" /></label>
				<div>
					
<ul class="one-to-many">
<g:each in="${ordersInstance?.orderdetails?}" var="o">
    <li><g:link controller="orderdetails" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="orderdetails" action="create" params="['orders.id': ordersInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'orderdetails.label', default: 'OrderDetails')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: ordersInstance, field: 'orderdetails', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: ordersInstance, field: 'shippers', 'error')} required">
				<label for="shippers" class="control-label"><g:message code="orders.shippers.label" default="Shippers" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" id="shippers" name="shippers.id" from="${com.exensio.northwind.Shippers.list()}" optionKey="id" required="" value="${ordersInstance?.shippers?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: ordersInstance, field: 'shippers', 'error')}</span>
				</div>
			</div>

