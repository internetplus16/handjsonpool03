<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>Welcome to HandJsonPool</title>
	<style type="text/css" media="screen">
	#status {
		background-color: #eee;
		border: .2em solid #fff;
		margin: 2em 2em 1em;
		padding: 1em;
		width: 12em;
		float: left;
		-moz-box-shadow: 0px 0px 1.25em #ccc;
		-webkit-box-shadow: 0px 0px 1.25em #ccc;
		box-shadow: 0px 0px 1.25em #ccc;
		-moz-border-radius: 0.6em;
		-webkit-border-radius: 0.6em;
		border-radius: 0.6em;
	}


	.ie6 #status {
		display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
	}

	#status ul {
		font-size: 0.9em;
		list-style-type: none;
		margin-bottom: 0.6em;
		padding: 0;
	}

	#status li {
		line-height: 1.3;
	}

	#status h1 {
		text-transform: uppercase;
		font-size: 1.1em;
		margin: 0 0 0.3em;
	}

	#page-body {
		margin: 2em 1em 1.25em 18em;
	}

	h2 {
		margin-top: 1em;
		margin-bottom: 0.3em;
		font-size: 1em;
	}

	.hh{
		/*margin-top:5cm;*/
		/*margin-bottom: 1cm;;*/

	}
	p {
		line-height: 1.5;
		margin:1em 0;

		/*background-color: #abbf78;*/


	}

	#controller-list ul {
		list-style-position: inside;
	}

	#controller-list li {
		line-height: 1.3;
		list-style-position: inside;
		margin: 0.25em 0;
	}

	@media screen and (max-width: 480px) {
		#status {
			display: none;
		}

		#page-body {
			margin: 0 1em 1em;
		}

		#page-body h1 {
			margin-top: 0;
		}
	}
	#Intro p{
		text-align:justify;
		padding-right: 0.5cm;
		padding-left: 0.5cm;
		padding-bottom: 0.5cm;

			}
		.introd{
			/*background-color: aliceblue;*/
			background-color: #f0ffff;
			padding: 10px !important;
			width:550px;
			margin:0 auto;
			display: block;
		}
	table{
		margin-left: 10cm;
		padding: 0 0;
		/*text-align: left;*/
	}

	.lab{
		font-size: 20px;
		font-family: cursive;
		margin-right: 0.4cm;
		margin-left: 1.2cm;



	}


	
	</style>
</head>
<body>
%{--<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
%{--<div id="header" ></div>--}%
%{--<div id="status" role="complementary">--}%
%{--<h1>Application Status</h1>--}%
%{--<ul>--}%
%{--<li>App version: <g:meta name="app.version"/></li>--}%
%{--<li>Grails version: <g:meta name="app.grails.version"/></li>--}%
%{--<li>Groovy version: ${GroovySystem.getVersion()}</li>--}%
%{--<li>JVM version: ${System.getProperty('java.version')}</li>--}%
%{--<li>Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</li>--}%
%{--<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>--}%
%{--<li>Domains: ${grailsApplication.domainClasses.size()}</li>--}%
%{--<li>Services: ${grailsApplication.serviceClasses.size()}</li>--}%
%{--<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>--}%
%{--</ul>--}%
%{--<h1>Installed Plugins</h1>--}%
%{--<ul>--}%
%{--<g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">--}%
%{--<li>${plugin.name} - ${plugin.version}</li>--}%
%{--</g:each>--}%
%{--</ul>--}%
%{--</div>--}%
<br>

<div id="Intro">
	<h1 class="hh" align="center"><font size="6em">Intro</font></h1>
	<div class="introd">
	<p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspHandJsonPool provides user for register, login, modify the password function.
	Users only after logined after create,delete,modify the new projects,
	and create the new JSON data, modify the JSON data, delete the JSON data,
	but users access the JSON data  don't need safety certification temporarily, finally,plus the security check.
	</p>
	</div>
	<div>
		<g:form action="url"  controller="json" method="post">
			<div class="url" >
				<label class="lab">Url</label>
				<input type="text"  style="height: 30px;width: 330px" name="placehoderUrl"/>
				<span class="buttons">
					<input type="submit"value="search"/>
				</span>
			</div>

		</g:form>
	</div>
</div>
<br>

<!--<div id="page-body" role="main">
			%{--<h1>Welcome to Grails</h1>--}%
%{--<p>Congratulations, you have successfully started your first Grails application! At the moment--}%
%{--this is the default page, feel free to modify it to either redirect to a controller or display whatever--}%
%{--content you may choose. Below is a list of controllers that are currently deployed in this application,--}%
%{--click on each to execute its default action:</p>--}%
			
			<div id="controller-list" role="navigation">
				<!--<h2>Available Controllers:</h2>-->
<!--<ul>
					%{--<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">--}%
	%{--<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.name}</g:link></li>--}%
%{--</g:each>--}%
				</ul>
				-->
%{--<div class="jsons" align="center">--}%
	%{--<h1>Json Routes</h1>--}%
	%{--<p>Views Examples</p>--}%
	%{--<table>--}%
		%{--<tr>--}%
			%{--<td>--}%
				%{--<label>POST</label>--}%
			%{--</td>--}%
			%{--<td>--}%
				%{--<a href="http://localhost:8080/handjsonpool03/json/p1u/userr/post">/json/project/user/method</a>--}%
			%{--</td>--}%
		%{--</tr>--}%
		%{--<tr>--}%
			%{--<td>--}%
				%{--<label>PUT</label>--}%
			%{--</td>--}%
			%{--<td>--}%
				%{--<a href="http://localhost:8080/handjsonpool03/json/p2a">/json/project</a>--}%
			%{--</td>--}%
		%{--</tr>--}%
	%{--</table>--}%
%{--</div>--}%

</div>
</body>
</html>
