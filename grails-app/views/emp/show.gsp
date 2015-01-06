
<%@ page import="com.alyahyan.Emp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'emp.label', default: 'Emp')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="col-sm-offset-2 col-sm-10">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		</div>
		<g:render template="/templates/payroll/sidemenu" />
		<div class="col-md-10">
			<div id="show-emp" class="content scaffold-show" role="main">
				<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
				</g:if>
				<dl>
					<g:if test="${empInstance?.eno}">
					<dt class="col-sm-2 ln-ht">
						<span id="eno-label" class="property-label"><g:message code="emp.eno.label" default="Eno" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
						<span class="property-value" aria-labelledby="eno-label"><g:fieldValue bean="${empInstance}" field="eno"/></span>
					</dd>
					</g:if>
				
					<g:if test="${empInstance?.ename}">
					<dt class="col-sm-2 ln-ht">
						<span id="ename-label" class="property-label"><g:message code="emp.ename.label" default="Ename" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="ename-label"><g:fieldValue bean="${empInstance}" field="ename"/></span>
					</dd>
					</g:if>

					<g:if test="${empInstance?.div}">
					<dt class="col-sm-2 ln-ht">
						<span id="div-label" class="property-label"><g:message code="emp.div.label" default="Div" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="div-label"><g:link controller="div" action="show" id="${empInstance?.div?.id}">${empInstance?.div?.encodeAsHTML()}</g:link></span>
						
					</dd>
					</g:if>

					<g:if test="${empInstance?.sec}">
					<dt class="col-sm-2 ln-ht">
						<span id="sec-label" class="property-label"><g:message code="emp.sec.label" default="Sec" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="sec-label"><g:link controller="sec" action="show" id="${empInstance?.sec?.id}">${empInstance?.sec?.encodeAsHTML()}</g:link></span>
						
					</dd>
					</g:if>

					<g:if test="${empInstance?.sal}">
					<dt class="col-sm-2 ln-ht">
						<span id="sal-label" class="property-label"><g:message code="emp.sal.label" default="Sal" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="sal-label"><g:fieldValue bean="${empInstance}" field="sal"/></span>
					</dd>
					</g:if>
				
					<g:if test="${empInstance?.loan}">
					<dt class="col-sm-2 ln-ht">
						<span id="loan-label" class="property-label"><g:message code="emp.loan.label" default="Loan" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="loan-label"><g:fieldValue bean="${empInstance}" field="loan"/></span>
					</dd>
					</g:if>
				
					<g:if test="${empInstance?.ded}">
					<dt class="col-sm-2 ln-ht">
						<span id="ded-label" class="property-label"><g:message code="emp.ded.label" default="Ded" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="ded-label"><g:fieldValue bean="${empInstance}" field="ded"/></span>
					</dd>
					</g:if>
				
					<g:if test="${empInstance?.orate}">
					<dt class="col-sm-2 ln-ht">
						<span id="orate-label" class="property-label"><g:message code="emp.orate.label" default="Orate" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="orate-label"><g:fieldValue bean="${empInstance}" field="orate"/></span>
					</dd>
					</g:if>
				
					<g:if test="${empInstance?.frate}">
					<dt class="col-sm-2 ln-ht">
						<span id="frate-label" class="property-label"><g:message code="emp.frate.label" default="Frate" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="frate-label"><g:fieldValue bean="${empInstance}" field="frate"/></span>
					</dd>
					</g:if>
				
					<g:if test="${empInstance?.vacation}">
					<dt class="col-sm-2 ln-ht">
						<span id="vacation-label" class="property-label"><g:message code="emp.vacation.label" default="Vacation" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="vacation-label"><g:formatBoolean boolean="${empInstance?.vacation}" /></span>
					</dd>
					</g:if>
				
					<g:if test="${empInstance?.dateCreated}">
					<dt class="col-sm-2 ln-ht">
						<span id="dateCreated-label" class="property-label"><g:message code="emp.dateCreated.label" default="Date Created" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="dateCreated-label"><g:fieldValue bean="${empInstance}" field="dateCreated"/></span>
					</dd>
					</g:if>
				
					<g:if test="${empInstance?.lastUpdated}">
					<dt class="col-sm-2 ln-ht">
						<span id="lastUpdated-label" class="property-label"><g:message code="emp.lastUpdated.label" default="Last Updated" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="lastUpdated-label"><g:fieldValue bean="${empInstance}" field="lastUpdated"/></span>
					</dd>
					</g:if>
				
				</dl>
				<div class="col-sm-12 mrgn">
					<g:form url="[resource:empInstance, action:'delete']" method="DELETE">
						<fieldset class="buttons">
							<g:link class="btn btn-primary edit" action="edit" resource="${empInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
							<g:actionSubmit class="btn btn-danger delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</fieldset>
					</g:form>
				</div>
			</div>
		</div>
	</body>
</html>
