<%@ page import="com.talkio.Event" %>



<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="event.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${eventInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="event.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${eventInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="event.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="5000" required="" value="${eventInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'organizer', 'error')} required">
	<label for="organizer">
		<g:message code="event.organizer.label" default="Organizer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="organizer" name="organizer.id" from="${com.talkio.User.list()}" optionKey="id" required="" value="${eventInstance?.organizer?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'venue', 'error')} required">
	<label for="venue">
		<g:message code="event.venue.label" default="Venue" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="venue" required="" value="${eventInstance?.venue}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="event.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${eventInstance?.startDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="event.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${eventInstance?.endDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'volunteers', 'error')} ">
	<label for="volunteers">
		<g:message code="event.volunteers.label" default="Volunteers" />
		
	</label>
	<g:select name="volunteers" from="${com.talkio.User.list()}" multiple="multiple" optionKey="id" size="5" value="${eventInstance?.volunteers*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'sponsorships', 'error')} ">
	<label for="sponsorships">
		<g:message code="event.sponsorships.label" default="Sponsorships" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${eventInstance?.sponsorships?}" var="s">
    <li><g:link controller="sponsorship" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="sponsorship" action="create" params="['event.id': eventInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'sponsorship.label', default: 'Sponsorship')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'tasks', 'error')} ">
	<label for="tasks">
		<g:message code="event.tasks.label" default="Tasks" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${eventInstance?.tasks?}" var="t">
    <li><g:link controller="task" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="task" action="create" params="['event.id': eventInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'task.label', default: 'Task')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'messages', 'error')} ">
	<label for="messages">
		<g:message code="event.messages.label" default="Messages" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${eventInstance?.messages?}" var="m">
    <li><g:link controller="msg" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="msg" action="create" params="['event.id': eventInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'msg.label', default: 'Msg')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'respondents', 'error')} ">
	<label for="respondents">
		<g:message code="event.respondents.label" default="Respondents" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'sponsors', 'error')} ">
	<label for="sponsors">
		<g:message code="event.sponsors.label" default="Sponsors" />
		
	</label>
	<g:select name="sponsors" from="${com.talkio.Sponsor.list()}" multiple="multiple" optionKey="id" size="5" value="${eventInstance?.sponsors*.id}" class="many-to-many"/>

</div>

