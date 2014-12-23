
<%@ page import="com.alyahyan.MonSal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'monSal.label', default: 'MonSal')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-monSal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-monSal" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list monSal">
			
				<g:if test="${monSalInstance?.emp}">
				<li class="fieldcontain">
					<span id="emp-label" class="property-label"><g:message code="monSal.emp.label" default="Emp" /></span>
					
						<span class="property-value" aria-labelledby="emp-label"><g:link controller="emp" action="show" id="${monSalInstance?.emp?.id}">${monSalInstance?.emp?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${monSalInstance?.mmyy}">
				<li class="fieldcontain">
					<span id="mmyy-label" class="property-label"><g:message code="monSal.mmyy.label" default="Mmyy" /></span>
					
						<span class="property-value" aria-labelledby="mmyy-label"><g:fieldValue bean="${monSalInstance}" field="mmyy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monSalInstance?.sal}">
				<li class="fieldcontain">
					<span id="sal-label" class="property-label"><g:message code="monSal.sal.label" default="Sal" /></span>
					
						<span class="property-value" aria-labelledby="sal-label"><g:fieldValue bean="${monSalInstance}" field="sal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monSalInstance?.loan}">
				<li class="fieldcontain">
					<span id="loan-label" class="property-label"><g:message code="monSal.loan.label" default="Loan" /></span>
					
						<span class="property-value" aria-labelledby="loan-label"><g:fieldValue bean="${monSalInstance}" field="loan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monSalInstance?.ded}">
				<li class="fieldcontain">
					<span id="ded-label" class="property-label"><g:message code="monSal.ded.label" default="Ded" /></span>
					
						<span class="property-value" aria-labelledby="ded-label"><g:fieldValue bean="${monSalInstance}" field="ded"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monSalInstance?.net}">
				<li class="fieldcontain">
					<span id="net-label" class="property-label"><g:message code="monSal.net.label" default="Net" /></span>
					
						<span class="property-value" aria-labelledby="net-label"><g:fieldValue bean="${monSalInstance}" field="net"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monSalInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="monSal.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:fieldValue bean="${monSalInstance}" field="dateCreated"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monSalInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="monSal.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:fieldValue bean="${monSalInstance}" field="lastUpdated"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:monSalInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${monSalInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
