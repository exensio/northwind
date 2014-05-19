<%@ page import="com.exensio.northwind.Employees" %>



			<div class="${hasErrors(bean: employeesInstance, field: 'title', 'error')} ">
				<label for="title" class="control-label"><g:message code="employees.title.label" default="Title" /></label>
				<div>
					<g:textField class="form-control" name="title" value="${employeesInstance?.title}"/>
					<span class="help-inline">${hasErrors(bean: employeesInstance, field: 'title', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: employeesInstance, field: 'titleofcourtesy', 'error')} ">
				<label for="titleofcourtesy" class="control-label"><g:message code="employees.titleofcourtesy.label" default="Titleofcourtesy" /></label>
				<div>
					<g:textField class="form-control" name="titleofcourtesy" value="${employeesInstance?.titleofcourtesy}"/>
					<span class="help-inline">${hasErrors(bean: employeesInstance, field: 'titleofcourtesy', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: employeesInstance, field: 'birthdate', 'error')} ">
				<label for="birthdate" class="control-label"><g:message code="employees.birthdate.label" default="Birthdate" /></label>
				<div>
					<bs:datePicker name="birthdate" precision="day"  value="${employeesInstance?.birthdate}" default="none" noSelection="['': '']" />
					<span class="help-inline">${hasErrors(bean: employeesInstance, field: 'birthdate', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: employeesInstance, field: 'hiredate', 'error')} ">
				<label for="hiredate" class="control-label"><g:message code="employees.hiredate.label" default="Hiredate" /></label>
				<div>
					<bs:datePicker name="hiredate" precision="day"  value="${employeesInstance?.hiredate}" default="none" noSelection="['': '']" />
					<span class="help-inline">${hasErrors(bean: employeesInstance, field: 'hiredate', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: employeesInstance, field: 'address', 'error')} ">
				<label for="address" class="control-label"><g:message code="employees.address.label" default="Address" /></label>
				<div>
					<g:textField class="form-control" name="address" value="${employeesInstance?.address}"/>
					<span class="help-inline">${hasErrors(bean: employeesInstance, field: 'address', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: employeesInstance, field: 'city', 'error')} ">
				<label for="city" class="control-label"><g:message code="employees.city.label" default="City" /></label>
				<div>
					<g:textField class="form-control" name="city" value="${employeesInstance?.city}"/>
					<span class="help-inline">${hasErrors(bean: employeesInstance, field: 'city', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: employeesInstance, field: 'region', 'error')} ">
				<label for="region" class="control-label"><g:message code="employees.region.label" default="Region" /></label>
				<div>
					<g:textField class="form-control" name="region" value="${employeesInstance?.region}"/>
					<span class="help-inline">${hasErrors(bean: employeesInstance, field: 'region', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: employeesInstance, field: 'postalcode', 'error')} ">
				<label for="postalcode" class="control-label"><g:message code="employees.postalcode.label" default="Postalcode" /></label>
				<div>
					<g:textField class="form-control" name="postalcode" value="${employeesInstance?.postalcode}"/>
					<span class="help-inline">${hasErrors(bean: employeesInstance, field: 'postalcode', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: employeesInstance, field: 'country', 'error')} ">
				<label for="country" class="control-label"><g:message code="employees.country.label" default="Country" /></label>
				<div>
					<g:textField class="form-control" name="country" value="${employeesInstance?.country}"/>
					<span class="help-inline">${hasErrors(bean: employeesInstance, field: 'country', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: employeesInstance, field: 'homephone', 'error')} ">
				<label for="homephone" class="control-label"><g:message code="employees.homephone.label" default="Homephone" /></label>
				<div>
					<g:textField class="form-control" name="homephone" value="${employeesInstance?.homephone}"/>
					<span class="help-inline">${hasErrors(bean: employeesInstance, field: 'homephone', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: employeesInstance, field: 'extension', 'error')} ">
				<label for="extension" class="control-label"><g:message code="employees.extension.label" default="Extension" /></label>
				<div>
					<g:textField class="form-control" name="extension" value="${employeesInstance?.extension}"/>
					<span class="help-inline">${hasErrors(bean: employeesInstance, field: 'extension', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: employeesInstance, field: 'photo', 'error')} ">
				<label for="photo" class="control-label"><g:message code="employees.photo.label" default="Photo" /></label>
				<div>
					<g:textField class="form-control" name="photo" value="${employeesInstance?.photo}"/>
					<span class="help-inline">${hasErrors(bean: employeesInstance, field: 'photo', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: employeesInstance, field: 'notes', 'error')} ">
				<label for="notes" class="control-label"><g:message code="employees.notes.label" default="Notes" /></label>
				<div>
					<g:textField class="form-control" name="notes" value="${employeesInstance?.notes}"/>
					<span class="help-inline">${hasErrors(bean: employeesInstance, field: 'notes', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: employeesInstance, field: 'reportsto', 'error')} ">
				<label for="reportsto" class="control-label"><g:message code="employees.reportsto.label" default="Reportsto" /></label>
				<div>
					<g:field class="form-control" name="reportsto" type="number" value="${employeesInstance.reportsto}"/>
					<span class="help-inline">${hasErrors(bean: employeesInstance, field: 'reportsto', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: employeesInstance, field: 'firstname', 'error')} ">
				<label for="firstname" class="control-label"><g:message code="employees.firstname.label" default="Firstname" /></label>
				<div>
					<g:textField class="form-control" name="firstname" value="${employeesInstance?.firstname}"/>
					<span class="help-inline">${hasErrors(bean: employeesInstance, field: 'firstname', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: employeesInstance, field: 'lastname', 'error')} ">
				<label for="lastname" class="control-label"><g:message code="employees.lastname.label" default="Lastname" /></label>
				<div>
					<g:textField class="form-control" name="lastname" value="${employeesInstance?.lastname}"/>
					<span class="help-inline">${hasErrors(bean: employeesInstance, field: 'lastname', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: employeesInstance, field: 'orderses', 'error')} ">
				<label for="orderses" class="control-label"><g:message code="employees.orderses.label" default="Orderses" /></label>
				<div>
					
<ul class="one-to-many">
<g:each in="${employeesInstance?.orderses?}" var="o">
    <li><g:link controller="orders" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="orders" action="create" params="['employees.id': employeesInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'orders.label', default: 'Orders')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: employeesInstance, field: 'orderses', 'error')}</span>
				</div>
			</div>

