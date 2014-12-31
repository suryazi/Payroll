
<%@ page import="com.alyahyan.Fri" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'fri.label', default: 'Fri')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="col-sm-offset-2 col-sm-10">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		</div>
		<g:render template="/templates/payroll/sidemenu" />
		<div class="col-md-10">
			<div id="show-fri" class="content scaffold-show" role="main">
				
				<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
				</g:if>
				<dl>
				
					<g:if test="${friInstance?.emp}">
					<dt class="col-sm-2 ln-ht">
						<span id="emp-label" class="property-label"><g:message code="fri.emp.label" default="Emp" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="emp-label"><g:link controller="emp" action="show" id="${friInstance?.emp?.id}">${friInstance?.emp?.encodeAsHTML()}</g:link></span>
						
					</dd>
					</g:if>
				
					<g:if test="${friInstance?.mmyy}">
					<dt class="col-sm-2 ln-ht">
						<span id="mmyy-label" class="property-label"><g:message code="fri.mmyy.label" default="Mmyy" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="mmyy-label"><g:fieldValue bean="${friInstance}" field="mmyy"/></span>
						
					</dd>
					</g:if>
				
					<g:if test="${friInstance?.nod}">
					<dt class="col-sm-2 ln-ht">
						<span id="nod-label" class="property-label"><g:message code="fri.nod.label" default="Nod" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="nod-label"><g:fieldValue bean="${friInstance}" field="nod"/></span>
						
					</dd>
					</g:if>
				
					<g:if test="${friInstance?.frate}">
					<dt class="col-sm-2 ln-ht">
						<span id="frate-label" class="property-label"><g:message code="fri.frate.label" default="Frate" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="frate-label"><g:fieldValue bean="${friInstance}" field="frate"/></span>
						
					</dd>
					</g:if>
				
					<g:if test="${friInstance?.famt}">
					<dt class="col-sm-2 ln-ht">
						<span id="famt-label" class="property-label"><g:message code="fri.famt.label" default="Famt" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="famt-label"><g:fieldValue bean="${friInstance}" field="famt"/></span>
						
					</dd>
					</g:if>
				
					<g:if test="${friInstance?.dateCreated}">
					<dt class="col-sm-2 ln-ht">
						<span id="dateCreated-label" class="property-label"><g:message code="fri.dateCreated.label" default="Date Created" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="dateCreated-label"><g:fieldValue bean="${friInstance}" field="dateCreated"/></span>
						
					</dd>
					</g:if>
				
					<g:if test="${friInstance?.lastUpdated}">
					<dt class="col-sm-2 ln-ht">
						<span id="lastUpdated-label" class="property-label"><g:message code="fri.lastUpdated.label" default="Last Updated" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="lastUpdated-label"><g:fieldValue bean="${friInstance}" field="lastUpdated"/></span>
						
					</dd>
					</g:if>
				
				</dl>
				<div class="col-sm-12 mrgn">
					<g:form url="[resource:friInstance, action:'delete']" method="DELETE">
						<fieldset class="buttons">
							<g:link class="btn btn-primary edit" action="edit" resource="${friInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
							<g:actionSubmit class="btn btn-danger delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</fieldset>
					</g:form>
				</div>
			</div>
		</div>
	</body>
</html>
