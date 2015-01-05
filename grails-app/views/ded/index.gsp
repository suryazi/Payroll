
<%@ page import="com.alyahyan.Ded" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ded.label', default: 'Ded')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-ded" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-ded" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="ded.emp.label" default="Emp" /></th>
					
						<th><g:message code="ded.loan.label" default="Loan" /></th>
					
						<g:sortableColumn property="mmyy" title="${message(code: 'ded.mmyy.label', default: 'Mmyy')}" />
					
						<g:sortableColumn property="dedamt" title="${message(code: 'ded.dedamt.label', default: 'Dedamt')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'ded.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'ded.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${dedInstanceList}" status="i" var="dedInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${dedInstance.id}">${fieldValue(bean: dedInstance, field: "emp")}</g:link></td>
					
						<td>${fieldValue(bean: dedInstance, field: "loan")}</td>
					
						<td>${fieldValue(bean: dedInstance, field: "mmyy")}</td>
					
						<td>${fieldValue(bean: dedInstance, field: "dedamt")}</td>
					
						<td>${fieldValue(bean: dedInstance, field: "dateCreated")}</td>
					
						<td>${fieldValue(bean: dedInstance, field: "lastUpdated")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${dedInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
