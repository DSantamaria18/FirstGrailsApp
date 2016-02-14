package com.talkio

class Task {

    String title 
    String notes 
    User assignedTo 
    Date dueDate 
    Event event 

    static constraints = { 
    	title blank: false 
    	notes blank: true, nullable: true, maxSize: 5000 
    	assignedTo nullable: true 
    	dueDate nullable: true 
    } 

    static belongsTo = Event

}
