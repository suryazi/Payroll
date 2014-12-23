
<%@ page import="com.alyahyan.MonSal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'monSal.label', default: 'MonSal')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-monSal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-monSal" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="monSal.emp.label" default="Emp" /></th>
					
						<g:sortableColumn property="mmyy" title="${message(code: 'monSal.mmyy.label', default: 'Mmyy')}" />
					
						<g:sortableColumn property="sal" title="${message(code: 'monSal.sal.label', default: 'Sal')}" />
					
						<g:sortableColumn property="loan" title="${message(code: 'monSal.loan.label', default: 'Loan')}" />
					
						<g:sortableColumn property="ded" title="${message(code: 'monSal.ded.label', default: 'Ded')}" />
					
						<g:sortableColumn property="net" title="${message(code: 'monSal.net.label', default: 'Net')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${monSalInstanceList}" status="i" var="monSalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${monSalInstance.id}">${fieldValue(bean: monSalInstance, field: "emp")}</g:link></td>
					
						<td>${fieldValue(bean: monSalInstance, field: "mmyy")}</td>
					
						<td>${fieldValue(bean: monSalInstance, field: "sal")}</td>
					
						<td>${fieldValue(bean: monSalInstance, field: "loan")}</td>
					
						<td>${fieldValue(bean: monSalInstance, field: "ded")}</td>
					
						<td>${fieldValue(bean: monSalInstance, field: "net")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${monSalInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
