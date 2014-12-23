
<%@ page import="com.alyahyan.Overtime" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'overtime.label', default: 'Overtime')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-overtime" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-overtime" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list overtime">
			
				<g:if test="${overtimeInstance?.emp}">
				<li class="fieldcontain">
					<span id="emp-label" class="property-label"><g:message code="overtime.emp.label" default="Emp" /></span>
					
						<span class="property-value" aria-labelledby="emp-label"><g:link controller="emp" action="show" id="${overtimeInstance?.emp?.id}">${overtimeInstance?.emp?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${overtimeInstance?.mmyy}">
				<li class="fieldcontain">
					<span id="mmyy-label" class="property-label"><g:message code="overtime.mmyy.label" default="Mmyy" /></span>
					
						<span class="property-value" aria-labelledby="mmyy-label"><g:fieldValue bean="${overtimeInstance}" field="mmyy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${overtimeInstance?.hrs}">
				<li class="fieldcontain">
					<span id="hrs-label" class="property-label"><g:message code="overtime.hrs.label" default="Hrs" /></span>
					
						<span class="property-value" aria-labelledby="hrs-label"><g:fieldValue bean="${overtimeInstance}" field="hrs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${overtimeInstance?.otrate}">
				<li class="fieldcontain">
					<span id="otrate-label" class="property-label"><g:message code="overtime.otrate.label" default="Otrate" /></span>
					
						<span class="property-value" aria-labelledby="otrate-label"><g:fieldValue bean="${overtimeInstance}" field="otrate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${overtimeInstance?.otamt}">
				<li class="fieldcontain">
					<span id="otamt-label" class="property-label"><g:message code="overtime.otamt.label" default="Otamt" /></span>
					
						<span class="property-value" aria-labelledby="otamt-label"><g:fieldValue bean="${overtimeInstance}" field="otamt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${overtimeInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="overtime.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:fieldValue bean="${overtimeInstance}" field="dateCreated"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${overtimeInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="overtime.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:fieldValue bean="${overtimeInstance}" field="lastUpdated"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:overtimeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${overtimeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
