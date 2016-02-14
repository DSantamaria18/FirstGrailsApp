<%@ page import="com.talkio.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'fullName', 'error')} required">
	<label for="fullName">
		<g:message code="user.fullName.label" default="Full Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fullName" required="" value="${userInstance?.fullName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="user.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" required="" value="${userInstance?.userName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${userInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'website', 'error')} required">
	<label for="website">
		<g:message code="user.website.label" default="Website" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="website" required="" value="${userInstance?.website}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'bio', 'error')} required">
	<label for="bio">
		<g:message code="user.bio.label" default="Bio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="bio" cols="40" rows="5" maxlength="5000" required="" value="${userInstance?.bio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>

</div>

