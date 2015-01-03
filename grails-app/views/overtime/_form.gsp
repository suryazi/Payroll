<%@ page import="com.alyahyan.Overtime" %>



<div class="fieldcontain ${hasErrors(bean: overtimeInstance, field: 'emp', 'error')} required">
	<div class="form-group">
		<label for="emp" class="col-sm-2 control-label">
			<g:message code="overtime.emp.label" default="Emp" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:select class="form-control select many-to-one" id="emp" name="emp.id" from="${com.alyahyan.Emp.list()}" optionKey="id" required="" value="${overtimeInstance?.emp?.id}"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: overtimeInstance, field: 'mmyy', 'error')} required">
	<div class="form-group">
		<label for="mmyy" class="col-sm-2 control-label">
			<g:message code="overtime.mmyy.label" default="Mmyy" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:textField class="form-control input" id="mmyy" name="mmyy" required="" value="${overtimeInstance?.mmyy}" placeholder="required"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: overtimeInstance, field: 'hrs', 'error')} required">
	<div class="form-group">
		<label for="hrs" class="col-sm-2 control-label">
			<g:message code="overtime.hrs.label" default="Hrs" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:field class="form-control input" type="number" id="hrs" name="hrs" min="0.0" step="0.5" required="" value="${overtimeInstance.hrs}"  placeholder="required"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: overtimeInstance, field: 'otrate', 'error')} required">
	<div class="form-group">
		<label for="otrate" class="col-sm-2 control-label">
			<g:message code="overtime.otrate.label" default="Otrate" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:field class="form-control input" type="number" id="otrate" name="otrate" min="0.0" step="0.5" required="" value="${overtimeInstance.otrate}" placeholder="required"/>
		</div>
	</div>
</div>