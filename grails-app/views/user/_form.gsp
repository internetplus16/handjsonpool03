<%@ page import="handjsonpool03.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'loginName', 'error')} required">
	<label for="loginName">
		<g:message code="user.loginName.label" default="Login Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="loginName" required="" value="${userInstance?.loginName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'phone', 'error')} required">
	<label for="phone">
		<g:message code="user.phone.label" default="Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone" maxlength="11" required="" value="${userInstance?.phone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'projects', 'error')} ">
	<label for="projects">
		<g:message code="user.projects.label" default="Projects" />
	</label>
<ul class="one-to-many">

<g:each in="${userInstance?.projects?}" var="p">
    <li><g:link controller="project" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="project" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'project.label', default: 'Project')])}</g:link>
</li>
</ul>


</div>

