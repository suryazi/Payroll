<%@ page import="com.alyahyan.Div" %>



<div class="fieldcontain ${hasErrors(bean: divInstance, field: 'divname', 'error')} required">
	<label for="divname">
		<g:message code="div.divname.label" default="Divname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="divname" required="" value="${divInstance?.divname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: divInstance, field: 'emp', 'error')} ">
	<label for="emp">
		<g:message code="div.emp.label" default="Emp" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${divInstance?.emp?}" var="e">
    <li><g:link controller="emp" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="emp" action="create" params="['div.id': divInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'emp.label', default: 'Emp')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: divInstance, field: 'sec', 'error')} ">
	<label for="sec">
		<g:message code="div.sec.label" default="Sec" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${divInstance?.sec?}" var="s">
    <li><g:link controller="sec" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="sec" action="create" params="['div.id': divInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'sec.label', default: 'Sec')])}</g:link>
</li>
</ul>

</div>

