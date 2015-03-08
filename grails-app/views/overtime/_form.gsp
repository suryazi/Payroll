<%@ page import="com.alyahyan.Overtime" %>



<div class="fieldcontain ${hasErrors(bean: overtimeInstance, field: 'emp', 'error')} required">
	<div class="form-group">
		<label for="emp" class="col-sm-2 control-label">
			<g:message code="overtime.ename.label" default="Emp Name" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<grid:selection class="form-control input" id="emp" title="Select Employee"
	            gridName="empSelection" controller="emp"
	            name="emp.id" value="${overtimeInstance?.emp?.id}"
	            showSeparateLabel="false"    />
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