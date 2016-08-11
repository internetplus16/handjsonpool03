<%@ page import="handjsonpool03.Project" %>



<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'projectName', 'error')} required">
	<label for="projectName">
		<g:message code="project.projectName.label" default="Project Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="projectName" required="" value="${projectInstance?.projectName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="project.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${projectInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'jsons', 'error')} ">
	<label for="jsons">
		<g:message code="project.jsons.label" default="Jsons" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${projectInstance?.jsons?}" var="j">
    <li><g:link controller="json" action="show" id="${j.id}">${j?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="json" action="create" params="['project.id': projectInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'json.label', default: 'Json')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="project.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${handjsonpool03.User.list()}" optionKey="id" required="" value="${projectInstance?.user?.id}" class="many-to-one"/>

</div>

