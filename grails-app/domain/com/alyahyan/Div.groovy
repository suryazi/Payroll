package com.alyahyan

import org.joda.time.*
import org.jadira.usertype.dateandtime.joda.*

class Div {

	String 		divname
	LocalDate	dateCreated
	LocalDate	lastUpdated

    static constraints = {
    	divname blank:false, unique:true
    }

    static hasMany = [emp:Emp, sec:Sec]

    String toString(){
    	"${divname}"
    }
}
