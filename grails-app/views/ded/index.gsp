
<%@ page import="com.alyahyan.Ded" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'ded.label', default: 'Ded')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="col-sm-offset-2 col-sm-10">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		</div>
		<g:render template="/templates/payroll/sidemenu" model="[active: 'list']"/>
		<div class="col-md-10 row-fluid">
			<div id="list-ded" class="content scaffold-list" role="main">
				
				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>
				<table class="table table-striped">
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
		</div>
	</body>
</html>
