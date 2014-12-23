<%@ page import="com.alyahyan.Emp" %>



<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'eno', 'error')} required">
	<label for="eno">
		<g:message code="emp.eno.label" default="Eno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="eno" required="" value="${empInstance?.eno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'ename', 'error')} required">
	<label for="ename">
		<g:message code="emp.ename.label" default="Ename" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ename" required="" value="${empInstance?.ename}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'sal', 'error')} required">
	<label for="sal">
		<g:message code="emp.sal.label" default="Sal" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="sal" min="0.0" required="" value="${fieldValue(bean: empInstance, field: 'sal')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'loan', 'error')} ">
	<label for="loan">
		<g:message code="emp.loan.label" default="Loan" />
		
	</label>
	<g:field type="number" name="loan" min="0.0" value="${fieldValue(bean: empInstance, field: 'loan')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'ded', 'error')} ">
	<label for="ded">
		<g:message code="emp.ded.label" default="Ded" />
		
	</label>
	<g:field type="number" name="ded" min="0.0" value="${fieldValue(bean: empInstance, field: 'ded')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'orate', 'error')} ">
	<label for="orate">
		<g:message code="emp.orate.label" default="Orate" />
		
	</label>
	<g:field type="number" name="orate" min="0.0" value="${fieldValue(bean: empInstance, field: 'orate')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'frate', 'error')} ">
	<label for="frate">
		<g:message code="emp.frate.label" default="Frate" />
		
	</label>
	<g:field type="number" name="frate" min="0.0" value="${fieldValue(bean: empInstance, field: 'frate')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'vacation', 'error')} ">
	<label for="vacation">
		<g:message code="emp.vacation.label" default="Vacation" />
		
	</label>
	<g:checkBox name="vacation" value="${empInstance?.vacation}" />
</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'absents', 'error')} ">
	<label for="absents">
		<g:message code="emp.absents.label" default="Absents" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${empInstance?.absents?}" var="a">
    <li><g:link controller="absent" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="absent" action="create" params="['emp.id': empInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'absent.label', default: 'Absent')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'fris', 'error')} ">
	<label for="fris">
		<g:message code="emp.fris.label" default="Fris" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${empInstance?.fris?}" var="f">
    <li><g:link controller="fri" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="fri" action="create" params="['emp.id': empInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'fri.label', default: 'Fri')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'monsals', 'error')} ">
	<label for="monsals">
		<g:message code="emp.monsals.label" default="Monsals" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${empInstance?.monsals?}" var="m">
    <li><g:link controller="monSal" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="monSal" action="create" params="['emp.id': empInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'monSal.label', default: 'MonSal')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'overtiimes', 'error')} ">
	<label for="overtiimes">
		<g:message code="emp.overtiimes.label" default="Overtiimes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${empInstance?.overtiimes?}" var="o">
    <li><g:link controller="overtime" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="overtime" action="create" params="['emp.id': empInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'overtime.label', default: 'Overtime')])}</g:link>
</li>
</ul>

</div>

