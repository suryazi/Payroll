
<%@ page import="com.alyahyan.Div" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'div.label', default: 'Div')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="col-sm-offset-2 col-sm-10">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		</div>
		<g:render template="/templates/payroll/sidemenu" />
		<div class="col-md-10">
			<div id="show-div" class="content scaffold-show" role="main">
				
				<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
				</g:if>
				<dl>
				
					<g:if test="${divInstance?.divname}">
					<dt class="col-sm-2 ln-ht">
						<span id="divname-label" class="property-label"><g:message code="div.divname.label" default="Divname" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="divname-label"><g:fieldValue bean="${divInstance}" field="divname"/></span>
						
					</dd>
					</g:if>
				
					<g:if test="${divInstance?.dateCreated}">
					<dt class="col-sm-2 ln-ht">
						<span id="dateCreated-label" class="property-label"><g:message code="div.dateCreated.label" default="Date Created" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="dateCreated-label"><g:fieldValue bean="${divInstance}" field="dateCreated"/></span>
						
					</dd>
					</g:if>
				
				
					<g:if test="${divInstance?.lastUpdated}">
					<dt class="col-sm-2 ln-ht">
						<span id="lastUpdated-label" class="property-label"><g:message code="div.lastUpdated.label" default="Last Updated" /></span>
					</dt>
					<dd class="col-sm-10 ln-ht">
							<span class="property-value" aria-labelledby="lastUpdated-label"><g:fieldValue bean="${divInstance}" field="lastUpdated"/></span>
						
					</dd>
					</g:if>
				
				</dl>
				<div class="col-sm-12 mrgn">
					<g:form url="[resource:divInstance, action:'delete']" method="DELETE">
						<fieldset class="buttons">
							<g:link class="btn btn-primary edit" action="edit" resource="${divInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
							<g:actionSubmit class="btn btn-danger delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</fieldset>
					</g:form>
				</div>
			</div>
		</div>
	</body>
</html>
