<%@ page import="com.alyahyan.Sec" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'sec.label', default: 'Sec')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
		<asset:javascript src="easygrid.selection.js"/>
    	<asset:stylesheet src="easygrid.jqgrid.css"/>
	</head>
	<body>
		<div class="col-sm-offset-2 col-sm-10">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
		</div>
		<g:render template="/templates/payroll/sidemenu" />
		<div class="col-md-6">
			<div id="edit-sec" class="content scaffold-edit" role="main">
				
				<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
				</g:if>
				<g:hasErrors bean="${secInstance}">
				<ul class="errors" role="alert">
					<g:eachError bean="${secInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
				</g:hasErrors>
				<g:form class="form-horizontal" url="[resource:secInstance, action:'update']" method="PUT" >
					<g:hiddenField name="version" value="${secInstance?.version}" />
					<fieldset class="form">
						<g:render template="form"/>
					</fieldset>
					<fieldset class="buttons">
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-primary">
									<g:message code="default.button.update.label" default="Update" />
								</button>
                                <g:link class="list" action="index" class="btn btn-warning">
                                        <g:message code="default.button.cancel.label" default="Cancel" />
                                </g:link>
                            </div>
						</div>
					</fieldset>
				</g:form>
			</div>
		</div>
	</body>
</html>
