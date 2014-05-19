<%@ page import="com.exensio.northwind.Suppliers" %>



			<div class="${hasErrors(bean: suppliersInstance, field: 'contactname', 'error')} ">
				<label for="contactname" class="control-label"><g:message code="suppliers.contactname.label" default="Contactname" /></label>
				<div>
					<g:textField class="form-control" name="contactname" value="${suppliersInstance?.contactname}"/>
					<span class="help-inline">${hasErrors(bean: suppliersInstance, field: 'contactname', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: suppliersInstance, field: 'contacttitle', 'error')} ">
				<label for="contacttitle" class="control-label"><g:message code="suppliers.contacttitle.label" default="Contacttitle" /></label>
				<div>
					<g:textField class="form-control" name="contacttitle" value="${suppliersInstance?.contacttitle}"/>
					<span class="help-inline">${hasErrors(bean: suppliersInstance, field: 'contacttitle', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: suppliersInstance, field: 'address', 'error')} ">
				<label for="address" class="control-label"><g:message code="suppliers.address.label" default="Address" /></label>
				<div>
					<g:textField class="form-control" name="address" value="${suppliersInstance?.address}"/>
					<span class="help-inline">${hasErrors(bean: suppliersInstance, field: 'address', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: suppliersInstance, field: 'city', 'error')} ">
				<label for="city" class="control-label"><g:message code="suppliers.city.label" default="City" /></label>
				<div>
					<g:textField class="form-control" name="city" value="${suppliersInstance?.city}"/>
					<span class="help-inline">${hasErrors(bean: suppliersInstance, field: 'city', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: suppliersInstance, field: 'region', 'error')} ">
				<label for="region" class="control-label"><g:message code="suppliers.region.label" default="Region" /></label>
				<div>
					<g:textField class="form-control" name="region" value="${suppliersInstance?.region}"/>
					<span class="help-inline">${hasErrors(bean: suppliersInstance, field: 'region', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: suppliersInstance, field: 'postalcode', 'error')} ">
				<label for="postalcode" class="control-label"><g:message code="suppliers.postalcode.label" default="Postalcode" /></label>
				<div>
					<g:textField class="form-control" name="postalcode" value="${suppliersInstance?.postalcode}"/>
					<span class="help-inline">${hasErrors(bean: suppliersInstance, field: 'postalcode', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: suppliersInstance, field: 'country', 'error')} ">
				<label for="country" class="control-label"><g:message code="suppliers.country.label" default="Country" /></label>
				<div>
					<g:textField class="form-control" name="country" value="${suppliersInstance?.country}"/>
					<span class="help-inline">${hasErrors(bean: suppliersInstance, field: 'country', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: suppliersInstance, field: 'phone', 'error')} ">
				<label for="phone" class="control-label"><g:message code="suppliers.phone.label" default="Phone" /></label>
				<div>
					<g:textField class="form-control" name="phone" value="${suppliersInstance?.phone}"/>
					<span class="help-inline">${hasErrors(bean: suppliersInstance, field: 'phone', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: suppliersInstance, field: 'fax', 'error')} ">
				<label for="fax" class="control-label"><g:message code="suppliers.fax.label" default="Fax" /></label>
				<div>
					<g:textField class="form-control" name="fax" value="${suppliersInstance?.fax}"/>
					<span class="help-inline">${hasErrors(bean: suppliersInstance, field: 'fax', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: suppliersInstance, field: 'homepage', 'error')} ">
				<label for="homepage" class="control-label"><g:message code="suppliers.homepage.label" default="Homepage" /></label>
				<div>
					<g:textField class="form-control" name="homepage" value="${suppliersInstance?.homepage}"/>
					<span class="help-inline">${hasErrors(bean: suppliersInstance, field: 'homepage', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: suppliersInstance, field: 'companyname', 'error')} ">
				<label for="companyname" class="control-label"><g:message code="suppliers.companyname.label" default="Companyname" /></label>
				<div>
					<g:textField class="form-control" name="companyname" value="${suppliersInstance?.companyname}"/>
					<span class="help-inline">${hasErrors(bean: suppliersInstance, field: 'companyname', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: suppliersInstance, field: 'productses', 'error')} ">
				<label for="productses" class="control-label"><g:message code="suppliers.productses.label" default="Productses" /></label>
				<div>
					
<ul class="one-to-many">
<g:each in="${suppliersInstance?.productses?}" var="p">
    <li><g:link controller="products" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="products" action="create" params="['suppliers.id': suppliersInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'products.label', default: 'Products')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: suppliersInstance, field: 'productses', 'error')}</span>
				</div>
			</div>

