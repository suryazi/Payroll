
<%@ page import="com.alyahyan.Emp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'emp.label', default: 'Emp')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-emp" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-emp" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list emp">
			
				<g:if test="${empInstance?.eno}">
				<li class="fieldcontain">
					<span id="eno-label" class="property-label"><g:message code="emp.eno.label" default="Eno" /></span>
					
						<span class="property-value" aria-labelledby="eno-label"><g:fieldValue bean="${empInstance}" field="eno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.ename}">
				<li class="fieldcontain">
					<span id="ename-label" class="property-label"><g:message code="emp.ename.label" default="Ename" /></span>
					
						<span class="property-value" aria-labelledby="ename-label"><g:fieldValue bean="${empInstance}" field="ename"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.sal}">
				<li class="fieldcontain">
					<span id="sal-label" class="property-label"><g:message code="emp.sal.label" default="Sal" /></span>
					
						<span class="property-value" aria-labelledby="sal-label"><g:fieldValue bean="${empInstance}" field="sal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.loan}">
				<li class="fieldcontain">
					<span id="loan-label" class="property-label"><g:message code="emp.loan.label" default="Loan" /></span>
					
						<span class="property-value" aria-labelledby="loan-label"><g:fieldValue bean="${empInstance}" field="loan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.ded}">
				<li class="fieldcontain">
					<span id="ded-label" class="property-label"><g:message code="emp.ded.label" default="Ded" /></span>
					
						<span class="property-value" aria-labelledby="ded-label"><g:fieldValue bean="${empInstance}" field="ded"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.orate}">
				<li class="fieldcontain">
					<span id="orate-label" class="property-label"><g:message code="emp.orate.label" default="Orate" /></span>
					
						<span class="property-value" aria-labelledby="orate-label"><g:fieldValue bean="${empInstance}" field="orate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.frate}">
				<li class="fieldcontain">
					<span id="frate-label" class="property-label"><g:message code="emp.frate.label" default="Frate" /></span>
					
						<span class="property-value" aria-labelledby="frate-label"><g:fieldValue bean="${empInstance}" field="frate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.vacation}">
				<li class="fieldcontain">
					<span id="vacation-label" class="property-label"><g:message code="emp.vacation.label" default="Vacation" /></span>
					
						<span class="property-value" aria-labelledby="vacation-label"><g:formatBoolean boolean="${empInstance?.vacation}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.absents}">
				<li class="fieldcontain">
					<span id="absents-label" class="property-label"><g:message code="emp.absents.label" default="Absents" /></span>
					
						<g:each in="${empInstance.absents}" var="a">
						<span class="property-value" aria-labelledby="absents-label"><g:link controller="absent" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="emp.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:fieldValue bean="${empInstance}" field="dateCreated"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.fris}">
				<li class="fieldcontain">
					<span id="fris-label" class="property-label"><g:message code="emp.fris.label" default="Fris" /></span>
					
						<g:each in="${empInstance.fris}" var="f">
						<span class="property-value" aria-labelledby="fris-label"><g:link controller="fri" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="emp.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:fieldValue bean="${empInstance}" field="lastUpdated"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.monsals}">
				<li class="fieldcontain">
					<span id="monsals-label" class="property-label"><g:message code="emp.monsals.label" default="Monsals" /></span>
					
						<g:each in="${empInstance.monsals}" var="m">
						<span class="property-value" aria-labelledby="monsals-label"><g:link controller="monSal" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${empInstance?.overtiimes}">
				<li class="fieldcontain">
					<span id="overtiimes-label" class="property-label"><g:message code="emp.overtiimes.label" default="Overtiimes" /></span>
					
						<g:each in="${empInstance.overtiimes}" var="o">
						<span class="property-value" aria-labelledby="overtiimes-label"><g:link controller="overtime" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:empInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${empInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
