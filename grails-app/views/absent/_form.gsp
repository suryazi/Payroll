<%@ page import="com.alyahyan.Absent" %>



<div class="fieldcontain ${hasErrors(bean: absentInstance, field: 'emp', 'error')} required">
	<div class="form-group">
		<label for="emp" class="col-sm-2 control-label">
			<g:message code="absent.emp.label" default="Emp" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<grid:selection class="form-control input" id="emp" title="Select Employee"
	            gridName="empSelection" controller="emp"
	            name="emp.id" value="${absentInstance?.emp?.id}"
	            showSeparateLabel="false"    />
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: absentInstance, field: 'mmyy', 'error')} required">
	<div class="form-group">
		<label for="mmyy" class="col-sm-2 control-label">
			<g:message code="absent.mmyy.label" default="Mmyy" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:textField class="form-control input" id="mmyy" name="mmyy" required="" value="${absentInstance?.mmyy}" placeholder="required"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: absentInstance, field: 'nod', 'error')} required">
	<div class="form-group">
		<label for="nod" class="col-sm-2 control-label">
			<g:message code="absent.nod.label" default="Nod" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:field class="form-control input" type="number" id="nod" name="nod" min="0.0" step="0.5" required="" value="${absentInstance?.nod}" placeholder="required"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: absentInstance, field: 'fine', 'error')} ">
	<div class="form-group">
		<label for="fine" class="col-sm-2 control-label">
			<g:message code="absent.fine.label" default="Fine" />
			
		</label>
		<div class="col-sm-8">
			<g:field class="form-control input chkval" type="number" id= "fine" name="fine" min="0.0" step="0.5" value="${absentInstance?.fine}"/>
		</div>
	</div>
</div>
