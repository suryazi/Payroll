<%@ page import="com.alyahyan.Emp" %>



<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'eno', 'error')} required">
	<div class="form-group">
		<label for="eno" class="col-sm-2 control-label">
			<g:message code="emp.eno.label" default="Eno" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:textField class="form-control input" id="eno" name="eno" required="" value="${empInstance?.eno}" placeholder="required"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'ename', 'error')} required">
	<div class="form-group">
		<label for="ename" class="col-sm-2 control-label">
			<g:message code="emp.ename.label" default="Ename" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:textField class="form-control input" id="ename" name="ename" required="" value="${empInstance?.ename}" placeholder="required"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'div', 'error')} required">
	<div class="form-group">
		<label for="div" class="col-sm-2 control-label">
			<g:message code="emp.div.label" default="Division" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:select class="form-control select many-to-one" id="div" name="div.id" from="${com.alyahyan.Div.list()}" optionKey="id" required="" value="${divInstance?.div?.id}"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'sec', 'error')} required">
	<div class="form-group">
		<label for="sec" class="col-sm-2 control-label">
			<g:message code="emp.sec.label" default="Section" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:select class="form-control select many-to-one" id="sec" name="sec.id" from="${com.alyahyan.Sec.list()}" optionKey="id" required="" value="${secInstance?.sec?.id}"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'sal', 'error')} required">
	<div class="form-group">
		<label for="sal" class="col-sm-2 control-label">
			<g:message code="emp.sal.label" default="Sal" />
			<span class="required-indicator">*</span>
		</label>
		<div class="col-sm-8">
			<g:field class="form-control input" type="number" id="sal" name="sal" min="0.0" step="0.5" required="" value="${empInstance?.sal}" placeholder="required"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'orate', 'error')} ">
	<div class="form-group">
		<label for="orate" class="col-sm-2 control-label">
			<g:message code="emp.orate.label" default="Orate" />
		</label>
		<div class="col-sm-8">
			<g:field class="form-control input chkval" id="orate" type="number" name="orate" min="0.0" step="0.5" value="${empInstance.orate}"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'frate', 'error')} ">
	<div class="form-group">
		<label for="frate" class="col-sm-2 control-label">
			<g:message code="emp.frate.label" default="Frate" />
		</label>
		<div class="col-sm-8">
			<g:field class="form-control input chkval" id="frate" type="number" name="frate" min="0.0" step="0.5" value="${empInstance.frate}"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: empInstance, field: 'vacation', 'error')} ">
	<div class="form-group">
		<label for="vacation" class="col-sm-2 control-label">
			<g:message code="emp.vacation.label" default="Vacation" />
		</label>
		<div class="col-sm-1">
			<g:checkBox class="form-control input" id="vacation" name="vacation" value="${empInstance?.vacation}" />
		</div>
	</div>
</div>