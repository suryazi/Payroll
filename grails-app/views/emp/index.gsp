
<%@ page import="com.alyahyan.Emp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'emp.label', default: 'Emp')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="col-sm-offset-2 col-sm-10">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		</div>
		<g:render template="/templates/payroll/sidemenu" model="[active: 'list']"/>
		<div class="col-md-10 row-fluid">
			<div id="list-emp" class="content scaffold-list" role="main">
				<g:if test="${flash.message}">
					<div class="message">${flash.message}</div>
				</g:if>
			</div>
			<table class="table table-striped">
				<thead>
					<tr>
					
						<g:sortableColumn property="eno" title="${message(code: 'emp.eno.label', default: 'Eno')}" />
					
						<g:sortableColumn property="ename" title="${message(code: 'emp.ename.label', default: 'Ename')}" />
					
						<g:sortableColumn property="sal" title="${message(code: 'emp.sal.label', default: 'Sal')}" />
					
						<g:sortableColumn property="orate" title="${message(code: 'emp.orate.label', default: 'Orate')}" />
					
						<g:sortableColumn property="frate" title="${message(code: 'emp.frate.label', default: 'Frate')}" />

						<g:sortableColumn property="vacation" title="${message(code: 'emp.vacation.label', default: 'Vacation')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${empInstanceList}" status="i" var="empInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${empInstance.id}">${fieldValue(bean: empInstance, field: "eno")}</g:link></td>
					
						<td>${fieldValue(bean: empInstance, field: "ename")}</td>
					
						<td>${fieldValue(bean: empInstance, field: "sal")}</td>
					
						<td>${fieldValue(bean: empInstance, field: "orate")}</td>
					
						<td>${fieldValue(bean: empInstance, field: "frate")}</td>

						<td>${fieldValue(bean: empInstance, field: "vacation")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${empInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
