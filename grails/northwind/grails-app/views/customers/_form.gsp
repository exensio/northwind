<%@ page import="com.exensio.northwind.Customers" %>



			<div class="${hasErrors(bean: customersInstance, field: 'contactname', 'error')} ">
				<label for="contactname" class="control-label"><g:message code="customers.contactname.label" default="Contactname" /></label>
				<div>
					<g:textField class="form-control" name="contactname" value="${customersInstance?.contactname}"/>
					<span class="help-inline">${hasErrors(bean: customersInstance, field: 'contactname', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: customersInstance, field: 'contacttitle', 'error')} ">
				<label for="contacttitle" class="control-label"><g:message code="customers.contacttitle.label" default="Contacttitle" /></label>
				<div>
					<g:textField class="form-control" name="contacttitle" value="${customersInstance?.contacttitle}"/>
					<span class="help-inline">${hasErrors(bean: customersInstance, field: 'contacttitle', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: customersInstance, field: 'address', 'error')} ">
				<label for="address" class="control-label"><g:message code="customers.address.label" default="Address" /></label>
				<div>
					<g:textField class="form-control" name="address" value="${customersInstance?.address}"/>
					<span class="help-inline">${hasErrors(bean: customersInstance, field: 'address', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: customersInstance, field: 'city', 'error')} ">
				<label for="city" class="control-label"><g:message code="customers.city.label" default="City" /></label>
				<div>
					<g:textField class="form-control" name="city" value="${customersInstance?.city}"/>
					<span class="help-inline">${hasErrors(bean: customersInstance, field: 'city', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: customersInstance, field: 'region', 'error')} ">
				<label for="region" class="control-label"><g:message code="customers.region.label" default="Region" /></label>
				<div>
					<g:textField class="form-control" name="region" value="${customersInstance?.region}"/>
					<span class="help-inline">${hasErrors(bean: customersInstance, field: 'region', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: customersInstance, field: 'postalcode', 'error')} ">
				<label for="postalcode" class="control-label"><g:message code="customers.postalcode.label" default="Postalcode" /></label>
				<div>
					<g:textField class="form-control" name="postalcode" value="${customersInstance?.postalcode}"/>
					<span class="help-inline">${hasErrors(bean: customersInstance, field: 'postalcode', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: customersInstance, field: 'country', 'error')} ">
				<label for="country" class="control-label"><g:message code="customers.country.label" default="Country" /></label>
				<div>
					<g:textField class="form-control" name="country" value="${customersInstance?.country}"/>
					<span class="help-inline">${hasErrors(bean: customersInstance, field: 'country', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: customersInstance, field: 'phone', 'error')} ">
				<label for="phone" class="control-label"><g:message code="customers.phone.label" default="Phone" /></label>
				<div>
					<g:textField class="form-control" name="phone" value="${customersInstance?.phone}"/>
					<span class="help-inline">${hasErrors(bean: customersInstance, field: 'phone', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: customersInstance, field: 'fax', 'error')} ">
				<label for="fax" class="control-label"><g:message code="customers.fax.label" default="Fax" /></label>
				<div>
					<g:textField class="form-control" name="fax" value="${customersInstance?.fax}"/>
					<span class="help-inline">${hasErrors(bean: customersInstance, field: 'fax', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: customersInstance, field: 'companyname', 'error')} ">
				<label for="companyname" class="control-label"><g:message code="customers.companyname.label" default="Companyname" /></label>
				<div>
					<g:textField class="form-control" name="companyname" value="${customersInstance?.companyname}"/>
					<span class="help-inline">${hasErrors(bean: customersInstance, field: 'companyname', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: customersInstance, field: 'customerid', 'error')} ">
				<label for="customerid" class="control-label"><g:message code="customers.customerid.label" default="Customerid" /></label>
				<div>
					<g:textField class="form-control" name="customerid" value="${customersInstance?.customerid}"/>
					<span class="help-inline">${hasErrors(bean: customersInstance, field: 'customerid', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: customersInstance, field: 'orderses', 'error')} ">
				<label for="orderses" class="control-label"><g:message code="customers.orderses.label" default="Orderses" /></label>
				<div>
					
<ul class="one-to-many">
<g:each in="${customersInstance?.orderses?}" var="o">
    <li><g:link controller="orders" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="orders" action="create" params="['customers.id': customersInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'orders.label', default: 'Orders')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: customersInstance, field: 'orderses', 'error')}</span>
				</div>
			</div>

