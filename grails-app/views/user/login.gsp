<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type"content="text/html;charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Login</title>
</head>
<body>
<div class="body">
%{--<h1>Login</h1>--}%
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>

    <g:form action="authenticate" method="post">
        <div class="dialog" >
            <table class="dialogb"  >
                <tbody>
                <tr class="prop">
                    <td valign="top"class="name">
                        <label for="login">Login:</label>
                    </td>
                    <td valign="top">
                        <input type="text" style="height: 25px;width: 200px" id="login" name="loginName"/>
                    </td>
                </tr>
                <tr class="prop">
                    <td valign="top"class="name">
                        <label for="password">Password:</label>
                    </td>
                    <td valign="top">
                        <input type="password" style="height: 25px;width: 200px" id="password" name="password"/>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="buttons" align="center">
            <span class="button">
                <input type="submit"value="Login"/>
            </span>
        </div>
    </g:form>
</div>
</body>
</html>
