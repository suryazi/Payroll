<%@ page import="com.alyahyan.Loan" %>



<div class="fieldcontain ${hasErrors(bean: loanInstance, field: 'emp', 'error')} required">
	<div class="form-group">
		<label for="emp" class="col-sm-2 control-label">
			<g:message code="loan.emp.label" default="Emp" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<grid:selection class="form-control input" id="emp" title="Select Employee"
	            gridName="empSelection" controller="emp"
	            name="emp.id" value="${loanInstance?.emp?.id}"
	            showSeparateLabel="false"    />
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: loanInstance, field: 'mmyy', 'error')} required">
	<div class="form-group">
		<label for="mmyy" class="col-sm-2 control-label">
			<g:message code="loan.mmyy.label" default="Mmyy" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:textField class="form-control input" id="mmyy" name="mmyy" required="" value="${loanInstance?.mmyy}" placeholder="required"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: loanInstance, field: 'loan', 'error')} required">
	<div class="form-group">
		<label for="loan" class="col-sm-2 control-label">
			<g:message code="loan.loan.label" default="Loan" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:field class="form-control input" type="number" id="loan" name="loan" min="0.0" step="0.5" required="" value="${loanInstance?.loan}" placeholder="required"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: loanInstance, field: 'ded', 'error')} required">
	<div class="form-group">
		<label for="ded" class="col-sm-2 control-label">
			<g:message code="loan.ded.label" default="Ded" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:field class="form-control input" type="number" id="ded" name="ded" min="0.0" step="0.5" required="" value="${loanInstance?.ded}" placeholder="required"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: loanInstance, field: 'noded', 'error')} ">
	<div class="form-group">
		<label for="noded" class="col-sm-2 control-label">
			<g:message code="loan.noded.label" default="Noded" />
		</label>
		<div class="col-sm-1">
			<g:checkBox class="form-control input" id="noded" name="noded" value="${loanInstance?.noded}" />
		</div>
	</div>
</div>