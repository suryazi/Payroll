
<%@ page import="com.alyahyan.Sec" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'sec.label', default: 'Sec')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="col-sm-offset-2 col-sm-10">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		</div>
		<g:render template="/templates/payroll/sidemenu" />
		<div class="col-md-10">
			<div id="show-sec" class="content scaffold-show" role="main">
				
				<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
				</g:if>
				<dl>
				
					<g:if test="${secInstance?.secname}">
					<dt class="col-sm-2 ln-ht">
						<span id="secname-label" class="property-label"><g:message code="sec.secname.label" default="Secname" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="secname-label"><g:fieldValue bean="${secInstance}" field="secname"/></span>
						
					</dd>
					</g:if>
				
					<g:if test="${secInstance?.div}">
					<dt class="col-sm-2 ln-ht">
						<span id="div-label" class="property-label"><g:message code="sec.div.label" default="Div" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="div-label"><g:link controller="div" action="show" id="${secInstance?.div?.id}">${secInstance?.div?.encodeAsHTML()}</g:link></span>
						
					</dd>
					</g:if>
				
					<g:if test="${secInstance?.dateCreated}">
					<dt class="col-sm-2 ln-ht">
						<span id="dateCreated-label" class="property-label"><g:message code="sec.dateCreated.label" default="Date Created" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="dateCreated-label"><g:fieldValue bean="${secInstance}" field="dateCreated"/></span>
						
					</dd>
					</g:if>
				
					<g:if test="${secInstance?.lastUpdated}">
					<dt class="col-sm-2 ln-ht">
						<span id="lastUpdated-label" class="property-label"><g:message code="sec.lastUpdated.label" default="Last Updated" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="lastUpdated-label"><g:fieldValue bean="${secInstance}" field="lastUpdated"/></span>
						
					</dd>
					</g:if>
				
				</dl>
				<div class="col-sm-12 mrgn">
					<g:form url="[resource:secInstance, action:'delete']" method="DELETE">
						<fieldset class="buttons">
							<g:link class="btn btn-primary edit" action="edit" resource="${secInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
							<g:actionSubmit class="btn btn-danger delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</fieldset>
					</g:form>
				</div>
			</div>
		</div>
	</body>
</html>
