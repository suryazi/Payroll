
<%@ page import="com.alyahyan.Fri" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'fri.label', default: 'Fri')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-fri" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-fri" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list fri">
			
				<g:if test="${friInstance?.emp}">
				<li class="fieldcontain">
					<span id="emp-label" class="property-label"><g:message code="fri.emp.label" default="Emp" /></span>
					
						<span class="property-value" aria-labelledby="emp-label"><g:link controller="emp" action="show" id="${friInstance?.emp?.id}">${friInstance?.emp?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${friInstance?.mmyy}">
				<li class="fieldcontain">
					<span id="mmyy-label" class="property-label"><g:message code="fri.mmyy.label" default="Mmyy" /></span>
					
						<span class="property-value" aria-labelledby="mmyy-label"><g:fieldValue bean="${friInstance}" field="mmyy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${friInstance?.nod}">
				<li class="fieldcontain">
					<span id="nod-label" class="property-label"><g:message code="fri.nod.label" default="Nod" /></span>
					
						<span class="property-value" aria-labelledby="nod-label"><g:fieldValue bean="${friInstance}" field="nod"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${friInstance?.frate}">
				<li class="fieldcontain">
					<span id="frate-label" class="property-label"><g:message code="fri.frate.label" default="Frate" /></span>
					
						<span class="property-value" aria-labelledby="frate-label"><g:fieldValue bean="${friInstance}" field="frate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${friInstance?.famt}">
				<li class="fieldcontain">
					<span id="famt-label" class="property-label"><g:message code="fri.famt.label" default="Famt" /></span>
					
						<span class="property-value" aria-labelledby="famt-label"><g:fieldValue bean="${friInstance}" field="famt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${friInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="fri.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:fieldValue bean="${friInstance}" field="dateCreated"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${friInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="fri.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:fieldValue bean="${friInstance}" field="lastUpdated"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:friInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${friInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
