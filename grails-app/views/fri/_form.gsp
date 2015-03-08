<%@ page import="com.alyahyan.Fri" %>



<div class="fieldcontain ${hasErrors(bean: friInstance, field: 'emp', 'error')} required">
	<div class="form-group">
		<label for="emp" class="col-sm-2 control-label">
			<g:message code="fri.emp.label" default="Emp" />
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

<div class="fieldcontain ${hasErrors(bean: friInstance, field: 'mmyy', 'error')} required">
	<div class="form-group">
		<label for="mmyy" class="col-sm-2 control-label">
			<g:message code="fri.mmyy.label" default="Mmyy" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:textField class="form-control input" id="mmyy" name="mmyy" required="" value="${friInstance?.mmyy}" placeholder="required"/>
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
			<g:field class="form-control input" type="number" id="nod" name="nod" min="0.0" step="0.5" required="" value="${friInstance.nod}" placeholder="required"/>
		</div>
	</div>
</div>