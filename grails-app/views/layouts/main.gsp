<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body>
		%{--<div id="grailsLogo" role="banner"><a href="http://grails.org"><asset:image src="grails_logo.png" alt="Grails"/></a>--}%
			%{--<div id="loginHeader">--}%
				%{--<g:loginControl/>--}%
			%{--</div>--}%
		%{--</div>--}%
	<div id="loginHeader">
		<div id="User" >
			%{--<ul >--}%
			<a href="http://localhost:8080/handjsonpool03/user/index"title="Create new user and change password">
				<button type="button" onclick="('welcome')" class="iee">User</button>
			</a>
			%{--</ul>--}%
			%{--<br>--}%
			%{--<ul >--}%
			<a href="http://localhost:8080/handjsonpool03/project/index"title="Show and manipulate projects">
				<button type="button" onclick="('welcome')" class="iee">Project</button>
			</a>
			%{--</ul>--}%
			%{--<br>--}%
			%{--<ul >--}%
			<a href="http://localhost:8080/handjsonpool03/json/index"title="Show and manipulate json">
				<button type="button" onclick="('welcome')" class="iee">Json</button>
			</a>
			%{--</>--}%
			&nbsp;&nbsp;<g:logupControl/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<g:loginControl/>
		</div>
		<g:render template="/layouts/header"/>
		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>
