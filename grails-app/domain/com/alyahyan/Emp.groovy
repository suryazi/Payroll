package com.alyahyan

import org.joda.time.*
import org.jadira.usertype.dateandtime.joda.*

class Emp {

    String     eno
	String     ename
	BigDecimal sal
	BigDecimal loan
	BigDecimal ded
	BigDecimal orate
	BigDecimal frate
	Boolean	   vacation
    LocalDate  dateCreated
    LocalDate  lastUpdated

    static constraints = {
    	eno unique:true, blank:false
    	ename blank:false
    	sal min:0.0, blank:false
    	loan min:0.0, nullable:true
    	ded min:0.0, nullable:true
    	orate min:0.0, nullable:true
    	frate min:0.0, nullable:true
    	vacation blank:false
    }

    static hasMany = [fris:Fri, overtiimes:Overtime, absents:Absent, monsals:MonSal]

    static mapping ={
        loan defaultValue:0
        ded defaultValue:0
        orate defaultValue:0
        frate defaultValue:0
        vacation defaultValue:false
    }

    String toString(){
    	"${eno}"
    }

}