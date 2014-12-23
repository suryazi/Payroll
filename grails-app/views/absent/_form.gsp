<%@ page import="com.alyahyan.Absent" %>



<div class="fieldcontain ${hasErrors(bean: absentInstance, field: 'emp', 'error')} required">
	<label for="emp">
		<g:message code="absent.emp.label" default="Emp" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="emp" name="emp.id" from="${com.alyahyan.Emp.list()}" optionKey="id" required="" value="${absentInstance?.emp?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: absentInstance, field: 'mmyy', 'error')} required">
	<label for="mmyy">
		<g:message code="absent.mmyy.label" default="Mmyy" />
		<span class="required-indicator">*</span>
	</label>
	<joda:datePicker name="mmyy" value="${absentInstance?.mmyy}" ></joda:datePicker>
</div>

<div class="fieldcontain ${hasErrors(bean: absentInstance, field: 'nod', 'error')} required">
	<label for="nod">
		<g:message code="absent.nod.label" default="Nod" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="nod" min="0.0" required="" value="${fieldValue(bean: absentInstance, field: 'nod')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: absentInstance, field: 'fine', 'error')} ">
	<label for="fine">
		<g:message code="absent.fine.label" default="Fine" />
		
	</label>
	<g:field type="number" name="fine" min="0.0" value="${fieldValue(bean: absentInstance, field: 'fine')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: absentInstance, field: 'tot', 'error')} required">
	<label for="tot">
		<g:message code="absent.tot.label" default="Tot" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="tot" required="" value="${fieldValue(bean: absentInstance, field: 'tot')}"/>
</div>

