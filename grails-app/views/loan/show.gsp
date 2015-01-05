
<%@ page import="com.alyahyan.Loan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'loan.label', default: 'Loan')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="col-sm-offset-2 col-sm-10">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		</div>
		<g:render template="/templates/payroll/sidemenu" />
		<div class="col-md-10">
			<div id="show-loan" class="content scaffold-show" role="main">
				<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
				</g:if>
				<dl>
				
					<g:if test="${loanInstance?.emp}">
					<dt class="col-sm-2 ln-ht">
						<span id="emp-label" class="property-label"><g:message code="loan.emp.label" default="Emp" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="emp-label"><g:link controller="emp" action="show" id="${loanInstance?.emp?.id}">${loanInstance?.emp?.encodeAsHTML()}</g:link></span>
						
					</dd>
					</g:if>
				
					<g:if test="${loanInstance?.mmyy}">
					<dt class="col-sm-2 ln-ht">
						<span id="mmyy-label" class="property-label"><g:message code="loan.mmyy.label" default="Mmyy" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="mmyy-label"><g:fieldValue bean="${loanInstance}" field="mmyy"/></span>
					</dd>
					</g:if>
				
					<g:if test="${loanInstance?.loan}">
					<dt class="col-sm-2 ln-ht">
						<span id="loan-label" class="property-label"><g:message code="loan.loan.label" default="Loan" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="loan-label"><g:fieldValue bean="${loanInstance}" field="loan"/></span>
					</dd>
					</g:if>
				
					<g:if test="${loanInstance?.ded}">
					<dt class="col-sm-2 ln-ht">
						<span id="ded-label" class="property-label"><g:message code="loan.ded.label" default="Ded" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="ded-label"><g:fieldValue bean="${loanInstance}" field="ded"/></span>
					</dd>
					</g:if>
				
					<g:if test="${loanInstance?.rem}">
					<dt class="col-sm-2 ln-ht">
						<span id="rem-label" class="property-label"><g:message code="loan.rem.label" default="Rem" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="rem-label"><g:fieldValue bean="${loanInstance}" field="rem"/></span>
					</dd>
					</g:if>
				
					<g:if test="${loanInstance?.noded}">
					<dt class="col-sm-2 ln-ht">
						<span id="noded-label" class="property-label"><g:message code="loan.noded.label" default="Noded" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="noded-label"><g:formatBoolean boolean="${loanInstance?.noded}" /></span>
					</dd>
					</g:if>
				
					<g:if test="${loanInstance?.dateCreated}">
					<dt class="col-sm-2 ln-ht">
						<span id="dateCreated-label" class="property-label"><g:message code="loan.dateCreated.label" default="Date Created" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="dateCreated-label"><g:fieldValue bean="${loanInstance}" field="dateCreated"/></span>
					</dd>
					</g:if>
				
					<g:if test="${loanInstance?.lastUpdated}">
					<dt class="col-sm-2 ln-ht">
						<span id="lastUpdated-label" class="property-label"><g:message code="loan.lastUpdated.label" default="Last Updated" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="lastUpdated-label"><g:fieldValue bean="${loanInstance}" field="lastUpdated"/></span>
					</dd>
					</g:if>
				
				</dl>
				<div class="col-sm-12 mrgn">
					<g:form url="[resource:loanInstance, action:'delete']" method="DELETE">
						<fieldset class="buttons">
							<g:link class="btn btn-primary edit" action="edit" resource="${loanInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
							<g:actionSubmit class="btn btn-danger delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</fieldset>
					</g:form>
				</div>
			</div>
		</div>
	</body>
</html>
