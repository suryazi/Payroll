
<%@ page import="com.alyahyan.Sec" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sec.label', default: 'Sec')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-sec" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-sec" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list sec">
			
				<g:if test="${secInstance?.secname}">
				<li class="fieldcontain">
					<span id="secname-label" class="property-label"><g:message code="sec.secname.label" default="Secname" /></span>
					
						<span class="property-value" aria-labelledby="secname-label"><g:fieldValue bean="${secInstance}" field="secname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${secInstance?.div}">
				<li class="fieldcontain">
					<span id="div-label" class="property-label"><g:message code="sec.div.label" default="Div" /></span>
					
						<span class="property-value" aria-labelledby="div-label"><g:link controller="div" action="show" id="${secInstance?.div?.id}">${secInstance?.div?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${secInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="sec.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:fieldValue bean="${secInstance}" field="dateCreated"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${secInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="sec.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:fieldValue bean="${secInstance}" field="lastUpdated"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:secInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${secInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
