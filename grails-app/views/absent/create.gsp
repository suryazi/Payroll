<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'absent.label', default: 'Absent')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<jqui:resources />
	</head>
	<body>
		<div class="col-sm-offset-2 col-sm-10">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
		</div>
		<g:render template="/templates/payroll/sidemenu" model="[active: 'create']"/>
		<div class="col-md-6">
			<div id="create-absent" class="content scaffold-create" role="main">
				<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
				</g:if>
				<g:hasErrors bean="${absentInstance}">
				<ul class="errors" role="alert">
					<g:eachError bean="${absentInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
				</g:hasErrors>
				<form role="form" class="form-horizontal" action="save" method="post">
					<fieldset class="form">
						<g:render template="form"/>
					</fieldset>
					<fieldset class="buttons">
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-primary">
									<g:message code="default.button.create.label" default="Create" />
								</button>
                                <g:link class="list" action="index" class="btn btn-warning">
                                        <g:message code="default.button.cancel.label" default="Cancel" />
                                </g:link>
                            </div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</body>
</html>
