<%@ page import="com.alyahyan.Absent" %>



<div class="fieldcontain ${hasErrors(bean: absentInstance, field: 'emp', 'error')} required">
	<div class="form-group">
		<label for="emp" class="col-sm-2 control-label">
			<g:message code="absent.emp.label" default="Emp" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:select class="form-control select many-to-one" id="emp" name="emp.id" from="${com.alyahyan.Emp.list()}" optionKey="id" required="" value="${absentInstance?.emp?.id}"/>
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
			<joda:datePicker name="mmyy" value="${absentInstance?.mmyy}" ></joda:datePicker>
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
			<g:field class="form-control input" type="number" name="nod" min="0.0" required="" value="${fieldValue(bean: absentInstance, field: 'nod')}" placeholder="required"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: absentInstance, field: 'fine', 'error')} ">
	<div class="form-group">
		<label for="fine" class="col-sm-2 control-label">
			<g:message code="absent.fine.label" default="Fine" />
			
		</label>
		<div class="col-sm-8">
			<g:field class="form-control input" type="number" name="fine" min="0.0" value="${fieldValue(bean: absentInstance, field: 'fine')}"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: absentInstance, field: 'tot', 'error')} required">
	<div class="form-group">
		<label for="tot" class="col-sm-2 control-label">
			<g:message code="absent.tot.label" default="Tot" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:field class="form-control input" type="number" name="tot" required="" value="${fieldValue(bean: absentInstance, field: 'tot')}"/>
		</div>
	</div>
</div>

