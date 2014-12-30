
<%@ page import="com.alyahyan.Absent" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'absent.label', default: 'Absent')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="col-sm-offset-2 col-sm-10">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		</div>
		<g:render template="/templates/payroll/sidemenu" model="[active: 'list']"/>
		<div class="col-md-10 row-fluid">
			<div id="list-absent" class="content scaffold-list" role="main">
				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>
			</div>
			<table class="table table-striped">
			<thead>
					<tr>
					
						<th><g:message code="absent.emp.label" default="Emp" /></th>
					
						<g:sortableColumn property="mmyy" title="${message(code: 'absent.mmyy.label', default: 'Mmyy')}" />
					
						<g:sortableColumn property="nod" title="${message(code: 'absent.nod.label', default: 'Nod')}" />
					
						<g:sortableColumn property="fine" title="${message(code: 'absent.fine.label', default: 'Fine')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'absent.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'absent.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${absentInstanceList}" status="i" var="absentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${absentInstance.id}">${fieldValue(bean: absentInstance, field: "emp")}</g:link></td>
					
						<td>${fieldValue(bean: absentInstance, field: "mmyy")}</td>
					
						<td>${fieldValue(bean: absentInstance, field: "nod")}</td>
					
						<td>${fieldValue(bean: absentInstance, field: "fine")}</td>
					
						<td>${fieldValue(bean: absentInstance, field: "dateCreated")}</td>
					
						<td>${fieldValue(bean: absentInstance, field: "lastUpdated")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${absentInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
