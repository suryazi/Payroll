<%@ page import="com.alyahyan.Ded" %>



<div class="fieldcontain ${hasErrors(bean: dedInstance, field: 'emp', 'error')} required">
	<div class="form-group">
		<label for="emp" class="col-sm-2 control-label">
			<g:message code="ded.emp.label" default="Emp" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:select class="form-control select many-to-one" id="emp" name="emp.id" from="${com.alyahyan.Emp.list()}" optionKey="id" required="" value="${dedInstance?.emp?.id}"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: dedInstance, field: 'loan', 'error')} required">
	<div class="form-group">
		<label for="loan" class="col-sm-2 control-label">
			<g:message code="ded.loan.label" default="Loan" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:select class="form-control select many-to-one" id="loan" name="loan.id" from="${com.alyahyan.Loan.list()}" optionKey="id" required="" value="${dedInstance?.loan?.id}"/>
		</div>
</div>

<div class="fieldcontain ${hasErrors(bean: dedInstance, field: 'mmyy', 'error')} required">
	<div class="form-group">
		<label for="mmyy" class="col-sm-2 control-label">
			<g:message code="ded.mmyy.label" default="Mmyy" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:textField class="form-control input" id="mmyy" name="mmyy" required="" value="${dedInstance?.mmyy}" placeholder="required"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: dedInstance, field: 'dedamt', 'error')} required">
	<div class="form-group">
		<label for="dedamt" class="col-sm-2 control-label">
			<g:message code="ded.dedamt.label" default="Dedamt" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:field class="form-control input" type="number" id="dedamt" name="dedamt" min="0.0" step="0.5" required="" value="${dedInstance?.dedamt}" placeholder="required"/>
		</div>
	</div>
</div>

