
<%@ page import="com.alyahyan.Loan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'loan.label', default: 'Loan')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="col-sm-offset-2 col-sm-10">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		</div>
		<g:render template="/templates/payroll/sidemenu" model="[active: 'list']"/>
		<div class="col-md-10 row-fluid">
			<div id="list-loan" class="content scaffold-list" role="main">
				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>
				<table class="table table-striped">
				<thead>
						<tr>
						
							<th><g:message code="loan.emp.label" default="Emp" /></th>
						
							<g:sortableColumn property="mmyy" title="${message(code: 'loan.mmyy.label', default: 'Mmyy')}" />
						
							<g:sortableColumn property="loan" title="${message(code: 'loan.loan.label', default: 'Loan')}" />
						
							<g:sortableColumn property="ded" title="${message(code: 'loan.ded.label', default: 'Ded')}" />
						
							<g:sortableColumn property="rem" title="${message(code: 'loan.rem.label', default: 'Rem')}" />
						
							<g:sortableColumn property="noded" title="${message(code: 'loan.noded.label', default: 'Noded')}" />
						
						</tr>
					</thead>
					<tbody>
					<g:each in="${loanInstanceList}" status="i" var="loanInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
							<td><g:link action="show" id="${loanInstance.id}">${fieldValue(bean: loanInstance, field: "emp")}</g:link></td>
						
							<td>${fieldValue(bean: loanInstance, field: "mmyy")}</td>
						
							<td>${fieldValue(bean: loanInstance, field: "loan")}</td>
						
							<td>${fieldValue(bean: loanInstance, field: "ded")}</td>
						
							<td>${fieldValue(bean: loanInstance, field: "rem")}</td>
						
							<td><g:formatBoolean boolean="${loanInstance.noded}" /></td>
						
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<g:paginate total="${loanInstanceCount ?: 0}" />
				</div>
			</div>
		</div>
	</body>
</html>
