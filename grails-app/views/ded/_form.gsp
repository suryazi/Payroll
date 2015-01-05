<%@ page import="com.alyahyan.Ded" %>



<div class="fieldcontain ${hasErrors(bean: dedInstance, field: 'emp', 'error')} required">
	<label for="emp">
		<g:message code="ded.emp.label" default="Emp" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="emp" name="emp.id" from="${com.alyahyan.Emp.list()}" optionKey="id" required="" value="${dedInstance?.emp?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: dedInstance, field: 'loan', 'error')} required">
	<label for="loan">
		<g:message code="ded.loan.label" default="Loan" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="loan" name="loan.id" from="${com.alyahyan.Loan.list()}" optionKey="id" required="" value="${dedInstance?.loan?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: dedInstance, field: 'mmyy', 'error')} required">
	<label for="mmyy">
		<g:message code="ded.mmyy.label" default="Mmyy" />
		<span class="required-indicator">*</span>
	</label>
	<joda:datePicker name="mmyy" value="${dedInstance?.mmyy}" ></joda:datePicker>
</div>

<div class="fieldcontain ${hasErrors(bean: dedInstance, field: 'dedamt', 'error')} required">
	<label for="dedamt">
		<g:message code="ded.dedamt.label" default="Dedamt" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="dedamt" min="0.0" required="" value="${fieldValue(bean: dedInstance, field: 'dedamt')}"/>
</div>

