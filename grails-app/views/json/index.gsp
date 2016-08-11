
<%@ page import="handjsonpool03.Json" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'json.label', default: 'Json')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-json" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				<g:if test="${session.user}">
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				</g:if>
			</ul>
		</div>
		<div id="list-json" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="placeholderUrl" title="${message(code: 'json.placeholderUrl.label', default: 'Placeholder Url')}" />
					
						<g:sortableColumn property="method" title="${message(code: 'json.method.label', default: 'Method')}" />
					
						<g:sortableColumn property="jsonData" title="${message(code: 'json.jsonData.label', default: 'Json Data')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'json.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'json.lastUpdated.label', default: 'Last Updated')}" />
					
						<th><g:message code="json.project.label" default="Project" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${jsonInstanceList}" status="i" var="jsonInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${jsonInstance.id}">${fieldValue(bean: jsonInstance, field: "placeholderUrl")}</g:link></td>
					
						<td>${fieldValue(bean: jsonInstance, field: "method")}</td>
					
						<td>${fieldValue(bean: jsonInstance, field: "jsonData")}</td>
					
						<td><g:formatDate date="${jsonInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${jsonInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: jsonInstance, field: "project")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${jsonInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
