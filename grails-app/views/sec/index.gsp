
<%@ page import="com.alyahyan.Sec" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sec.label', default: 'Sec')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sec" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-sec" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="secname" title="${message(code: 'sec.secname.label', default: 'Secname')}" />
					
						<th><g:message code="sec.div.label" default="Div" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'sec.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'sec.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${secInstanceList}" status="i" var="secInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${secInstance.id}">${fieldValue(bean: secInstance, field: "secname")}</g:link></td>
					
						<td>${fieldValue(bean: secInstance, field: "div")}</td>
					
						<td>${fieldValue(bean: secInstance, field: "dateCreated")}</td>
					
						<td>${fieldValue(bean: secInstance, field: "lastUpdated")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${secInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
