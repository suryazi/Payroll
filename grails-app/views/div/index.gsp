
<%@ page import="com.alyahyan.Div" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'div.label', default: 'Div')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="col-sm-offset-2 col-sm-10">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		</div>
		<g:render template="/templates/payroll/sidemenu" model="[active: 'list']"/>
		<div class="col-md-10 row-fluid">
			<div id="list-div" class="content scaffold-list" role="main">
				
				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>
				<table class="table table-striped">
				<thead>
						<tr>
						
							<g:sortableColumn property="divname" title="${message(code: 'div.divname.label', default: 'Divname')}" />
						
							<g:sortableColumn property="dateCreated" title="${message(code: 'div.dateCreated.label', default: 'Date Created')}" />
						
							<g:sortableColumn property="lastUpdated" title="${message(code: 'div.lastUpdated.label', default: 'Last Updated')}" />
						
						</tr>
					</thead>
					<tbody>
					<g:each in="${divInstanceList}" status="i" var="divInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
							<td><g:link action="show" id="${divInstance.id}">${fieldValue(bean: divInstance, field: "divname")}</g:link></td>
						
							<td>${fieldValue(bean: divInstance, field: "dateCreated")}</td>
						
							<td>${fieldValue(bean: divInstance, field: "lastUpdated")}</td>
						
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<g:paginate total="${divInstanceCount ?: 0}" />
				</div>
			</div>
		</div>
	</body>
</html>
