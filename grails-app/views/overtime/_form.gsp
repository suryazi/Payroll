<%@ page import="com.alyahyan.Overtime" %>



<div class="fieldcontain ${hasErrors(bean: overtimeInstance, field: 'emp', 'error')} required">
	<label for="emp">
		<g:message code="overtime.emp.label" default="Emp" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="emp" name="emp.id" from="${com.alyahyan.Emp.list()}" optionKey="id" required="" value="${overtimeInstance?.emp?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: overtimeInstance, field: 'mmyy', 'error')} required">
	<label for="mmyy">
		<g:message code="overtime.mmyy.label" default="Mmyy" />
		<span class="required-indicator">*</span>
	</label>
	<joda:datePicker name="mmyy" value="${overtimeInstance?.mmyy}" ></joda:datePicker>
</div>

<div class="fieldcontain ${hasErrors(bean: overtimeInstance, field: 'hrs', 'error')} required">
	<label for="hrs">
		<g:message code="overtime.hrs.label" default="Hrs" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="hrs" required="" value="${fieldValue(bean: overtimeInstance, field: 'hrs')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: overtimeInstance, field: 'otrate', 'error')} required">
	<label for="otrate">
		<g:message code="overtime.otrate.label" default="Otrate" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="otrate" required="" value="${fieldValue(bean: overtimeInstance, field: 'otrate')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: overtimeInstance, field: 'otamt', 'error')} required">
	<label for="otamt">
		<g:message code="overtime.otamt.label" default="Otamt" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="otamt" required="" value="${fieldValue(bean: overtimeInstance, field: 'otamt')}"/>
</div>

