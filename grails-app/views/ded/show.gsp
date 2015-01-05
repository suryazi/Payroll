
<%@ page import="com.alyahyan.Ded" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ded.label', default: 'Ded')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-ded" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-ded" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list ded">
			
				<g:if test="${dedInstance?.emp}">
				<li class="fieldcontain">
					<span id="emp-label" class="property-label"><g:message code="ded.emp.label" default="Emp" /></span>
					
						<span class="property-value" aria-labelledby="emp-label"><g:link controller="emp" action="show" id="${dedInstance?.emp?.id}">${dedInstance?.emp?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${dedInstance?.loan}">
				<li class="fieldcontain">
					<span id="loan-label" class="property-label"><g:message code="ded.loan.label" default="Loan" /></span>
					
						<span class="property-value" aria-labelledby="loan-label"><g:link controller="loan" action="show" id="${dedInstance?.loan?.id}">${dedInstance?.loan?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${dedInstance?.mmyy}">
				<li class="fieldcontain">
					<span id="mmyy-label" class="property-label"><g:message code="ded.mmyy.label" default="Mmyy" /></span>
					
						<span class="property-value" aria-labelledby="mmyy-label"><g:fieldValue bean="${dedInstance}" field="mmyy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dedInstance?.dedamt}">
				<li class="fieldcontain">
					<span id="dedamt-label" class="property-label"><g:message code="ded.dedamt.label" default="Dedamt" /></span>
					
						<span class="property-value" aria-labelledby="dedamt-label"><g:fieldValue bean="${dedInstance}" field="dedamt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dedInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="ded.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:fieldValue bean="${dedInstance}" field="dateCreated"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dedInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="ded.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:fieldValue bean="${dedInstance}" field="lastUpdated"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:dedInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${dedInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
