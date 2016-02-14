
<%@ page import="com.talkio.Event" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-event" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-event" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list event">
			
				<g:if test="${eventInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="event.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${eventInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="event.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${eventInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="event.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${eventInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.organizer}">
				<li class="fieldcontain">
					<span id="organizer-label" class="property-label"><g:message code="event.organizer.label" default="Organizer" /></span>
					
						<span class="property-value" aria-labelledby="organizer-label"><g:link controller="user" action="show" id="${eventInstance?.organizer?.id}">${eventInstance?.organizer?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.venue}">
				<li class="fieldcontain">
					<span id="venue-label" class="property-label"><g:message code="event.venue.label" default="Venue" /></span>
					
						<span class="property-value" aria-labelledby="venue-label"><g:fieldValue bean="${eventInstance}" field="venue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="event.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${eventInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="event.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${eventInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.volunteers}">
				<li class="fieldcontain">
					<span id="volunteers-label" class="property-label"><g:message code="event.volunteers.label" default="Volunteers" /></span>
					
						<g:each in="${eventInstance.volunteers}" var="v">
						<span class="property-value" aria-labelledby="volunteers-label"><g:link controller="user" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.sponsorships}">
				<li class="fieldcontain">
					<span id="sponsorships-label" class="property-label"><g:message code="event.sponsorships.label" default="Sponsorships" /></span>
					
						<g:each in="${eventInstance.sponsorships}" var="s">
						<span class="property-value" aria-labelledby="sponsorships-label"><g:link controller="sponsorship" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.tasks}">
				<li class="fieldcontain">
					<span id="tasks-label" class="property-label"><g:message code="event.tasks.label" default="Tasks" /></span>
					
						<g:each in="${eventInstance.tasks}" var="t">
						<span class="property-value" aria-labelledby="tasks-label"><g:link controller="task" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.messages}">
				<li class="fieldcontain">
					<span id="messages-label" class="property-label"><g:message code="event.messages.label" default="Messages" /></span>
					
						<g:each in="${eventInstance.messages}" var="m">
						<span class="property-value" aria-labelledby="messages-label"><g:link controller="msg" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.respondents}">
				<li class="fieldcontain">
					<span id="respondents-label" class="property-label"><g:message code="event.respondents.label" default="Respondents" /></span>
					
						<span class="property-value" aria-labelledby="respondents-label"><g:fieldValue bean="${eventInstance}" field="respondents"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.sponsors}">
				<li class="fieldcontain">
					<span id="sponsors-label" class="property-label"><g:message code="event.sponsors.label" default="Sponsors" /></span>
					
						<g:each in="${eventInstance.sponsors}" var="s">
						<span class="property-value" aria-labelledby="sponsors-label"><g:link controller="sponsor" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:eventInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${eventInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
