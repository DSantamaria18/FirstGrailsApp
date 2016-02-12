package com.talkio

class Event {

    String city 
    String name 
    User organizer 
    String venue 
    Date startDate 
    Date endDate 
    String description 

    static hasMany = [	volunteers : User, 
    					respondents : String, 
    					sponsors : Sponsor, 
    					sponsorships : Sponsorship
    				]

    String toString(){ 
    	"$name, $city" 
    } 

    static constraints = {
    	name() 
    	city() 
    	description maxSize: 5000 
    	organizer() 
    	venue() 
    	startDate() 
    	endDate()
    	volunteers nullable: true 
    	sponsorships nullable: true
    }
}
