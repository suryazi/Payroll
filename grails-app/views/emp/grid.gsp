<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'emp.label', default: 'Employee')}" />
		<title><g:message code="default.grid.label" args="[entityName]" /></title>
		<asset:stylesheet src="easygrid.jqgrid.css"/>
		<asset:javascript src="easygrid.jqgrid.js"/>
	</head>
	<body>
		<asset:script type="text/javascript">
			function linkShowIdFormat(cellvalue, options, rowObject){
				//format the id cell value to new format so that it will show the corresponding details.
				return "<a href='/payroll/emp/show/" + cellvalue + "'>" + cellvalue + "</a> ";
			}

			function linkShowDivIdFormat(cellvalue, options, rowObject){
				return "<a href='/payroll/div/show/" + cellvalue + "'>" + cellvalue + "</a> ";
			}

			function linkShowSecIdFormat(cellvalue, options, rowObject){
				return "<a href='/payroll/sec/show/" + cellvalue + "'>" + cellvalue + "</a> ";
			}

			function idUnFormat(cellvalue, options){
				return cellvalue;
			}
		</asset:script>
		<div class="col-sm-offset-2 col-sm-10">
			<h1><g:message code="default.grid.label" args="[entityName]" /></h1>
		</div>
		<g:render template="/templates/payroll/sidemenu" model="[active: 'grid']"/>
		<div class="col-md-10 row-fluid">
			<div id="grid-div" class="content scaffold-grid" role="main">

				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>

				<grid:grid id='jqgridinitial' name='empJQ'>
				    <grid:set  width="900" caption="${g.message(code:'default.grid.label', args:[entityName])}"/>
				    <grid:set col="id" formatter='f:linkShowIdFormat' unformat="f:idUnFormat"/>
				    <grid:set col="div" formatter='f:linkShowDivIdFormat' unformat="f:idUnFormat"/>
				    <grid:set col="sec" formatter='f:linkShowSecIdFormat' unformat="f:idUnFormat"/>
				</grid:grid>

				<grid:exportButton name='empJQ'/>

			</div>
		</div>
		<asset:deferredScripts/>
	</body>
</html>
