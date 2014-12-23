
<%@ page import="com.alyahyan.Fri" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'fri.label', default: 'Fri')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-fri" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-fri" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="fri.emp.label" default="Emp" /></th>
					
						<g:sortableColumn property="mmyy" title="${message(code: 'fri.mmyy.label', default: 'Mmyy')}" />
					
						<g:sortableColumn property="nod" title="${message(code: 'fri.nod.label', default: 'Nod')}" />
					
						<g:sortableColumn property="frate" title="${message(code: 'fri.frate.label', default: 'Frate')}" />
					
						<g:sortableColumn property="famt" title="${message(code: 'fri.famt.label', default: 'Famt')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'fri.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${friInstanceList}" status="i" var="friInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${friInstance.id}">${fieldValue(bean: friInstance, field: "emp")}</g:link></td>
					
						<td>${fieldValue(bean: friInstance, field: "mmyy")}</td>
					
						<td>${fieldValue(bean: friInstance, field: "nod")}</td>
					
						<td>${fieldValue(bean: friInstance, field: "frate")}</td>
					
						<td>${fieldValue(bean: friInstance, field: "famt")}</td>
					
						<td>${fieldValue(bean: friInstance, field: "dateCreated")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${friInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
