<%@ page import="com.alyahyan.Sec" %>



<div class="fieldcontain ${hasErrors(bean: secInstance, field: 'secname', 'error')} required">
	<label for="secname">
		<g:message code="sec.secname.label" default="Secname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="secname" required="" value="${secInstance?.secname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: secInstance, field: 'div', 'error')} required">
	<label for="div">
		<g:message code="sec.div.label" default="Div" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="div" name="div.id" from="${com.alyahyan.Div.list()}" optionKey="id" required="" value="${secInstance?.div?.id}" class="many-to-one"/>
</div>

