
<%@ page import="com.alyahyan.Ded" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'ded.label', default: 'Ded')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="col-sm-offset-2 col-sm-10">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		</div>
		<g:render template="/templates/payroll/sidemenu" />
		<div class="col-md-10">
			<div id="show-ded" class="content scaffold-show" role="main">
				
				<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
				</g:if>
				<dl>
				
					<g:if test="${dedInstance?.emp}">
					<dt class="col-sm-2 ln-ht">
						<span id="emp-label" class="property-label"><g:message code="ded.emp.label" default="Emp" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="emp-label"><g:link controller="emp" action="show" id="${dedInstance?.emp?.id}">${dedInstance?.emp?.encodeAsHTML()}</g:link></span>
						
					</dd>
					</g:if>
				
					<g:if test="${dedInstance?.loan}">
					<dt class="col-sm-2 ln-ht">
						<span id="loan-label" class="property-label"><g:message code="ded.loan.label" default="Loan" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="loan-label"><g:link controller="loan" action="show" id="${dedInstance?.loan?.id}">${dedInstance?.loan?.encodeAsHTML()}</g:link></span>
						
					</dd>
					</g:if>
				
					<g:if test="${dedInstance?.mmyy}">
					<dt class="col-sm-2 ln-ht">
						<span id="mmyy-label" class="property-label"><g:message code="ded.mmyy.label" default="Mmyy" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="mmyy-label"><g:fieldValue bean="${dedInstance}" field="mmyy"/></span>
						
					</dd>
					</g:if>
				
					<g:if test="${dedInstance?.dedamt}">
					<dt class="col-sm-2 ln-ht">
						<span id="dedamt-label" class="property-label"><g:message code="ded.dedamt.label" default="Dedamt" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="dedamt-label"><g:fieldValue bean="${dedInstance}" field="dedamt"/></span>
						
					</dd>
					</g:if>
				
					<g:if test="${dedInstance?.dateCreated}">
					<dt class="col-sm-2 ln-ht">
						<span id="dateCreated-label" class="property-label"><g:message code="ded.dateCreated.label" default="Date Created" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="dateCreated-label"><g:fieldValue bean="${dedInstance}" field="dateCreated"/></span>
						
					</dd>
					</g:if>
				
					<g:if test="${dedInstance?.lastUpdated}">
					<dt class="col-sm-2 ln-ht">
						<span id="lastUpdated-label" class="property-label"><g:message code="ded.lastUpdated.label" default="Last Updated" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="lastUpdated-label"><g:fieldValue bean="${dedInstance}" field="lastUpdated"/></span>
						
					</dd>
					</g:if>
				
				</dl>
				<div class="col-sm-12 mrgn">
					<g:form url="[resource:dedInstance, action:'delete']" method="DELETE">
						<fieldset class="buttons">
							<g:link class="btn btn-primary edit" action="edit" resource="${dedInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
							<g:actionSubmit class="btn btn-danger delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</fieldset>
					</g:form>
				</div>
			</div>
		</div>
	</body>
</html>
