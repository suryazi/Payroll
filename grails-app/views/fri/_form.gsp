<%@ page import="com.alyahyan.Fri" %>



<div class="fieldcontain ${hasErrors(bean: friInstance, field: 'emp', 'error')} required">
	<div class="form-group">
		<label for="emp" class="col-sm-2 control-label">
			<g:message code="fri.emp.label" default="Emp" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:select class="form-control select many-to-one" id="emp" name="emp.id" from="${com.alyahyan.Emp.list()}" optionKey="id" required="" value="${friInstance?.emp?.id}"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: friInstance, field: 'mmyy', 'error')} required">
	<div class="form-group">
		<label for="mmyy" class="col-sm-2 control-label">
			<g:message code="fri.mmyy.label" default="Mmyy" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<joda:datePicker name="mmyy" value="${friInstance?.mmyy}" ></joda:datePicker>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: friInstance, field: 'nod', 'error')} required">
	<div class="form-group">
		<label for="nod" class="col-sm-2 control-label">
			<g:message code="fri.nod.label" default="Nod" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:field class="form-control input" type="number" id="nod" name="nod" min="0.0" required="" value="${friInstance.nod}" placeholder="required"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: friInstance, field: 'frate', 'error')} required">
	<div class="form-group">
		<label for="frate" class="col-sm-2 control-label">
			<g:message code="fri.frate.label" default="Frate" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:field class="form-control input" type="number" id="frate" name="frate" min="0.0" required="" value="${friInstance.frate}" placeholder="required"/>
		</div>
	</div>
</div>