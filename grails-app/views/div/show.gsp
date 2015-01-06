
<%@ page import="com.alyahyan.Div" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'div.label', default: 'Div')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-div" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-div" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list div">
			
				<g:if test="${divInstance?.divname}">
				<li class="fieldcontain">
					<span id="divname-label" class="property-label"><g:message code="div.divname.label" default="Divname" /></span>
					
						<span class="property-value" aria-labelledby="divname-label"><g:fieldValue bean="${divInstance}" field="divname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${divInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="div.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:fieldValue bean="${divInstance}" field="dateCreated"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${divInstance?.emp}">
				<li class="fieldcontain">
					<span id="emp-label" class="property-label"><g:message code="div.emp.label" default="Emp" /></span>
					
						<g:each in="${divInstance.emp}" var="e">
						<span class="property-value" aria-labelledby="emp-label"><g:link controller="emp" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${divInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="div.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:fieldValue bean="${divInstance}" field="lastUpdated"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${divInstance?.sec}">
				<li class="fieldcontain">
					<span id="sec-label" class="property-label"><g:message code="div.sec.label" default="Sec" /></span>
					
						<g:each in="${divInstance.sec}" var="s">
						<span class="property-value" aria-labelledby="sec-label"><g:link controller="sec" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:divInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${divInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
