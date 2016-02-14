package com.talkio

class Msg {

    String subject 
    String content 
    Msg parent 
    Event event 
    User author

    static constraints = { 
    	subject blank: false 
    	content blank: false, maxSize: 2000 
    	parent nullable: true 
    	author nullable: false 
    } 

    static belongsTo = Event


}
