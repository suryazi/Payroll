<%@ page import="com.alyahyan.Fri" %>



<div class="fieldcontain ${hasErrors(bean: friInstance, field: 'emp', 'error')} required">
	<label for="emp">
		<g:message code="fri.emp.label" default="Emp" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="emp" name="emp.id" from="${com.alyahyan.Emp.list()}" optionKey="id" required="" value="${friInstance?.emp?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: friInstance, field: 'mmyy', 'error')} required">
	<label for="mmyy">
		<g:message code="fri.mmyy.label" default="Mmyy" />
		<span class="required-indicator">*</span>
	</label>
	<joda:datePicker name="mmyy" value="${friInstance?.mmyy}" ></joda:datePicker>
</div>

<div class="fieldcontain ${hasErrors(bean: friInstance, field: 'nod', 'error')} required">
	<label for="nod">
		<g:message code="fri.nod.label" default="Nod" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="nod" required="" value="${fieldValue(bean: friInstance, field: 'nod')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: friInstance, field: 'frate', 'error')} required">
	<label for="frate">
		<g:message code="fri.frate.label" default="Frate" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="frate" required="" value="${fieldValue(bean: friInstance, field: 'frate')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: friInstance, field: 'famt', 'error')} required">
	<label for="famt">
		<g:message code="fri.famt.label" default="Famt" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="famt" required="" value="${fieldValue(bean: friInstance, field: 'famt')}"/>
</div>

