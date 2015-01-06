package com.alyahyan

import org.joda.time.*
import org.jadira.usertype.dateandtime.joda.*

class Sec {

	String 		secname
	LocalDate	dateCreated
	LocalDate	lastUpdated

    static constraints = {
    	secname blank:false, unique:'div'
    	div blank:false
    }

    static belongsTo = [div:Div]

    String toString(){
    	"${secname}"
    }
}
