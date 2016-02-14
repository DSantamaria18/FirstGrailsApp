<%@ page import="com.talkio.Msg" %>



<div class="fieldcontain ${hasErrors(bean: msgInstance, field: 'subject', 'error')} required">
	<label for="subject">
		<g:message code="msg.subject.label" default="Subject" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subject" required="" value="${msgInstance?.subject}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: msgInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="msg.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="content" cols="40" rows="5" maxlength="2000" required="" value="${msgInstance?.content}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: msgInstance, field: 'parent', 'error')} ">
	<label for="parent">
		<g:message code="msg.parent.label" default="Parent" />
		
	</label>
	<g:select id="parent" name="parent.id" from="${com.talkio.Msg.list()}" optionKey="id" value="${msgInstance?.parent?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: msgInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="msg.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="author" name="author.id" from="${com.talkio.User.list()}" optionKey="id" required="" value="${msgInstance?.author?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: msgInstance, field: 'event', 'error')} required">
	<label for="event">
		<g:message code="msg.event.label" default="Event" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="event" name="event.id" from="${com.talkio.Event.list()}" optionKey="id" required="" value="${msgInstance?.event?.id}" class="many-to-one"/>

</div>

