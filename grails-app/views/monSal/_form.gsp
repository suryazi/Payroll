<%@ page import="com.alyahyan.MonSal" %>



<div class="fieldcontain ${hasErrors(bean: monSalInstance, field: 'emp', 'error')} required">
	<label for="emp">
		<g:message code="monSal.emp.label" default="Emp" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="emp" name="emp.id" from="${com.alyahyan.Emp.list()}" optionKey="id" required="" value="${monSalInstance?.emp?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: monSalInstance, field: 'mmyy', 'error')} required">
	<label for="mmyy">
		<g:message code="monSal.mmyy.label" default="Mmyy" />
		<span class="required-indicator">*</span>
	</label>
	<joda:datePicker name="mmyy" value="${monSalInstance?.mmyy}" ></joda:datePicker>
</div>

<div class="fieldcontain ${hasErrors(bean: monSalInstance, field: 'sal', 'error')} required">
	<label for="sal">
		<g:message code="monSal.sal.label" default="Sal" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="sal" required="" value="${fieldValue(bean: monSalInstance, field: 'sal')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: monSalInstance, field: 'loan', 'error')} ">
	<label for="loan">
		<g:message code="monSal.loan.label" default="Loan" />
		
	</label>
	<g:field type="number" name="loan" value="${fieldValue(bean: monSalInstance, field: 'loan')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: monSalInstance, field: 'ded', 'error')} ">
	<label for="ded">
		<g:message code="monSal.ded.label" default="Ded" />
		
	</label>
	<g:field type="number" name="ded" value="${fieldValue(bean: monSalInstance, field: 'ded')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: monSalInstance, field: 'net', 'error')} required">
	<label for="net">
		<g:message code="monSal.net.label" default="Net" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="net" required="" value="${fieldValue(bean: monSalInstance, field: 'net')}"/>
</div>

