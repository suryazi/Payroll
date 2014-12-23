
<%@ page import="com.alyahyan.Overtime" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'overtime.label', default: 'Overtime')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-overtime" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-overtime" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="overtime.emp.label" default="Emp" /></th>
					
						<g:sortableColumn property="mmyy" title="${message(code: 'overtime.mmyy.label', default: 'Mmyy')}" />
					
						<g:sortableColumn property="hrs" title="${message(code: 'overtime.hrs.label', default: 'Hrs')}" />
					
						<g:sortableColumn property="otrate" title="${message(code: 'overtime.otrate.label', default: 'Otrate')}" />
					
						<g:sortableColumn property="otamt" title="${message(code: 'overtime.otamt.label', default: 'Otamt')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'overtime.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${overtimeInstanceList}" status="i" var="overtimeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${overtimeInstance.id}">${fieldValue(bean: overtimeInstance, field: "emp")}</g:link></td>
					
						<td>${fieldValue(bean: overtimeInstance, field: "mmyy")}</td>
					
						<td>${fieldValue(bean: overtimeInstance, field: "hrs")}</td>
					
						<td>${fieldValue(bean: overtimeInstance, field: "otrate")}</td>
					
						<td>${fieldValue(bean: overtimeInstance, field: "otamt")}</td>
					
						<td>${fieldValue(bean: overtimeInstance, field: "dateCreated")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${overtimeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
