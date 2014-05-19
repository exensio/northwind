
<%@ page import="com.exensio.northwind.Suppliers" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'suppliers.label', default: 'Suppliers')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-suppliers" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="suppliers.contactname.label" default="Contactname" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: suppliersInstance, field: "contactname")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="suppliers.contacttitle.label" default="Contacttitle" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: suppliersInstance, field: "contacttitle")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="suppliers.address.label" default="Address" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: suppliersInstance, field: "address")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="suppliers.city.label" default="City" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: suppliersInstance, field: "city")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="suppliers.region.label" default="Region" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: suppliersInstance, field: "region")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="suppliers.postalcode.label" default="Postalcode" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: suppliersInstance, field: "postalcode")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="suppliers.country.label" default="Country" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: suppliersInstance, field: "country")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="suppliers.phone.label" default="Phone" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: suppliersInstance, field: "phone")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="suppliers.fax.label" default="Fax" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: suppliersInstance, field: "fax")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="suppliers.homepage.label" default="Homepage" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: suppliersInstance, field: "homepage")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="suppliers.companyname.label" default="Companyname" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: suppliersInstance, field: "companyname")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="suppliers.productses.label" default="Productses" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${suppliersInstance.productses}" var="p">
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
