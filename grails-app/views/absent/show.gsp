
<%@ page import="com.alyahyan.Absent" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'absent.label', default: 'Absent')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="col-sm-offset-2 col-sm-10">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		</div>
		<g:render template="/templates/payroll/sidemenu" />
		<div class="col-md-10">
			<div id="show-absent" class="content scaffold-show" role="main">
				
				<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
				</g:if>
				<dl>
					<g:if test="${absentInstance?.emp}">
					<dt class="col-sm-2 ln-ht">
						<span id="emp-label" class="property-label"><g:message code="absent.emp.label" default="Emp" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="emp-label"><g:link controller="emp" action="show" id="${absentInstance?.emp?.id}">${absentInstance?.emp?.encodeAsHTML()}</g:link></span>
					</dd>
					</g:if>
				
					<g:if test="${absentInstance?.mmyy}">
					<dt class="col-sm-2 ln-ht">
						<span id="mmyy-label" class="property-label"><g:message code="absent.mmyy.label" default="Mmyy" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="mmyy-label"><g:fieldValue bean="${absentInstance}" field="mmyy"/></span>
					</dd>
					</g:if>
				
					<g:if test="${absentInstance?.nod}">
					<dt class="col-sm-2 ln-ht">
						<span id="nod-label" class="property-label"><g:message code="absent.nod.label" default="Nod" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="nod-label"><g:fieldValue bean="${absentInstance}" field="nod"/></span>
					</dd>
					</g:if>
				
					<g:if test="${absentInstance?.fine}">
					<dt class="col-sm-2 ln-ht">
						<span id="fine-label" class="property-label"><g:message code="absent.fine.label" default="Fine" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="fine-label"><g:fieldValue bean="${absentInstance}" field="fine"/></span>
					</dd>
					</g:if>
				
					<g:if test="${absentInstance?.tot}">
					<dt class="col-sm-2 ln-ht">
						<span id="tot-label" class="property-label"><g:message code="absent.tot.label" default="Tot" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="tot-label"><g:fieldValue bean="${absentInstance}" field="tot"/></span>
					</dd>
					</g:if>
					
					<g:if test="${absentInstance?.dateCreated}">
					<dt class="col-sm-2 ln-ht">
						<span id="dateCreated-label" class="property-label"><g:message code="absent.dateCreated.label" default="Date Created" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="dateCreated-label"><g:fieldValue bean="${absentInstance}" field="dateCreated"/></span>
					</dd>
					</g:if>
				
					<g:if test="${absentInstance?.lastUpdated}">
					<dt class="col-sm-2 ln-ht">
						<span id="lastUpdated-label" class="property-label"><g:message code="absent.lastUpdated.label" default="Last Updated" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="lastUpdated-label"><g:fieldValue bean="${absentInstance}" field="lastUpdated"/></span>
					</dd>
					</g:if>
				</dl>
				<div class="col-sm-12 mrgn">
					<g:form url="[resource:absentInstance, action:'delete']" method="DELETE">
						<fieldset class="buttons">
							<g:link class="btn btn-primary edit" action="edit" resource="${absentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
							<g:actionSubmit class="btn btn-danger delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</fieldset>
					</g:form>
				</div>
			</div>
		</div>
	</body>
</html>
