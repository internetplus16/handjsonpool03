<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-user" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${userInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${userInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:userInstance, action:'save']" >
				<fieldset class="form">
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


				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
