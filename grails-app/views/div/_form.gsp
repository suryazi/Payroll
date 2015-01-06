<%@ page import="com.alyahyan.Div" %>



<div class="fieldcontain ${hasErrors(bean: divInstance, field: 'divname', 'error')} required">
	<div class="form-group">
		<label for="divname" class="col-sm-2 control-label">
			<g:message code="div.divname.label" default="Divname" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:textField class="form-control input" id="divname" name="divname" required="" value="${divInstance?.divname}"/>
		</div>
	</div>
</div>