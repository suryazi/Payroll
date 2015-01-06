<%@ page import="com.alyahyan.Sec" %>



<div class="fieldcontain ${hasErrors(bean: secInstance, field: 'secname', 'error')} required">
	<div class="form-group">
		<label for="emp" class="col-sm-2 control-label">
			<g:message code="sec.secname.label" default="Secname" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:textField  class="form-control input" id="secname" name="secname" required="" value="${secInstance?.secname}"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: secInstance, field: 'div', 'error')} required">
	<div class="form-group">
		<label for="div" class="col-sm-2 control-label">
			<g:message code="sec.div.label" default="Div" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:select class="form-control select many-to-one" id="div" name="div.id" from="${com.alyahyan.Div.list()}" optionKey="id" required="" value="${secInstance?.div?.id}"/>
		</div>
	</div>
</div>

