
<%@ page import="handjsonpool03.User" %>

<div class=fieldcontain>
    <label>Old Password
        <span class="required-indicator"></span>>
    </label>
    <input type="password" name="OldPassword" >
</div>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
    <label for="password">
        <g:message code="user.password.label" default="Password" />
        <span class="required-indicator">*</span>
    </label>
    <g:field type="password" name="password" required="" />
</div>
<div class=fieldcontain>
    <label>Confirm password
        <span class="required-indicator"></span>>
    </label>
    <input type="password" name="ConfirmPassword" >
</div>
