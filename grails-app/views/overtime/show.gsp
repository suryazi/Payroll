
<%@ page import="com.alyahyan.Overtime" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'overtime.label', default: 'Overtime')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="col-sm-offset-2 col-sm-10">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		</div>
		<g:render template="/templates/payroll/sidemenu" />
		<div class="col-md-10">
			<div id="show-overtime" class="content scaffold-show" role="main">
				
				<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
				</g:if>
				<dl>
				
					<g:if test="${overtimeInstance?.emp}">
					<dt class="col-sm-2 ln-ht">
						<span id="emp-label" class="property-label"><g:message code="overtime.emp.label" default="Emp" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="emp-label"><g:link controller="emp" action="show" id="${overtimeInstance?.emp?.id}">${overtimeInstance?.emp?.encodeAsHTML()}</g:link></span>
						
					</dd>
					</g:if>
				
					<g:if test="${overtimeInstance?.mmyy}">
					<dt class="col-sm-2 ln-ht">
						<span id="mmyy-label" class="property-label"><g:message code="overtime.mmyy.label" default="Mmyy" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="mmyy-label"><g:fieldValue bean="${overtimeInstance}" field="mmyy"/></span>
						
					</dd>
					</g:if>
				
					<g:if test="${overtimeInstance?.hrs}">
					<dt class="col-sm-2 ln-ht">
						<span id="hrs-label" class="property-label"><g:message code="overtime.hrs.label" default="Hrs" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="hrs-label"><g:fieldValue bean="${overtimeInstance}" field="hrs"/></span>
						
					</dd>
					</g:if>
				
					<g:if test="${overtimeInstance?.otrate}">
					<dt class="col-sm-2 ln-ht">
						<span id="otrate-label" class="property-label"><g:message code="overtime.otrate.label" default="Otrate" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="otrate-label"><g:fieldValue bean="${overtimeInstance}" field="otrate"/></span>
						
					</dd>
					</g:if>
				
					<g:if test="${overtimeInstance?.otamt}">
					<dt class="col-sm-2 ln-ht">
						<span id="otamt-label" class="property-label"><g:message code="overtime.otamt.label" default="Otamt" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="otamt-label"><g:fieldValue bean="${overtimeInstance}" field="otamt"/></span>
						
					</dd>
					</g:if>
				
					<g:if test="${overtimeInstance?.dateCreated}">
					<dt class="col-sm-2 ln-ht">
						<span id="dateCreated-label" class="property-label"><g:message code="overtime.dateCreated.label" default="Date Created" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="dateCreated-label"><g:fieldValue bean="${overtimeInstance}" field="dateCreated"/></span>
						
					</dd>
					</g:if>
				
					<g:if test="${overtimeInstance?.lastUpdated}">
					<dt class="col-sm-2 ln-ht">
						<span id="lastUpdated-label" class="property-label"><g:message code="overtime.lastUpdated.label" default="Last Updated" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="lastUpdated-label"><g:fieldValue bean="${overtimeInstance}" field="lastUpdated"/></span>
						
					</dd>
					</g:if>
				
				</dl>
				<div class="col-sm-12 mrgn">
					<g:form url="[resource:overtimeInstance, action:'delete']" method="DELETE">
						<fieldset class="buttons">
							<g:link class="btn btn-primary edit" action="edit" resource="${overtimeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
							<g:actionSubmit class="btn btn-danger delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</fieldset>
					</g:form>
				</div>
			</div>
		</div>
	</body>
</html>
