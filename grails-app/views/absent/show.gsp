
<%@ page import="com.alyahyan.Absent" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'absent.label', default: 'Absent')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-absent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-absent" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list absent">
			
				<g:if test="${absentInstance?.emp}">
				<li class="fieldcontain">
					<span id="emp-label" class="property-label"><g:message code="absent.emp.label" default="Emp" /></span>
					
						<span class="property-value" aria-labelledby="emp-label"><g:link controller="emp" action="show" id="${absentInstance?.emp?.id}">${absentInstance?.emp?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${absentInstance?.mmyy}">
				<li class="fieldcontain">
					<span id="mmyy-label" class="property-label"><g:message code="absent.mmyy.label" default="Mmyy" /></span>
					
						<span class="property-value" aria-labelledby="mmyy-label"><g:fieldValue bean="${absentInstance}" field="mmyy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${absentInstance?.nod}">
				<li class="fieldcontain">
					<span id="nod-label" class="property-label"><g:message code="absent.nod.label" default="Nod" /></span>
					
						<span class="property-value" aria-labelledby="nod-label"><g:fieldValue bean="${absentInstance}" field="nod"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${absentInstance?.fine}">
				<li class="fieldcontain">
					<span id="fine-label" class="property-label"><g:message code="absent.fine.label" default="Fine" /></span>
					
						<span class="property-value" aria-labelledby="fine-label"><g:fieldValue bean="${absentInstance}" field="fine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${absentInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="absent.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:fieldValue bean="${absentInstance}" field="dateCreated"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${absentInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="absent.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:fieldValue bean="${absentInstance}" field="lastUpdated"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${absentInstance?.tot}">
				<li class="fieldcontain">
					<span id="tot-label" class="property-label"><g:message code="absent.tot.label" default="Tot" /></span>
					
						<span class="property-value" aria-labelledby="tot-label"><g:fieldValue bean="${absentInstance}" field="tot"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:absentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${absentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
