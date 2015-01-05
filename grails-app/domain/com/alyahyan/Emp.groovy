package com.alyahyan

import org.joda.time.*
import org.jadira.usertype.dateandtime.joda.*

class Emp {

    String     eno
	String     ename
	BigDecimal sal
	BigDecimal orate
	BigDecimal frate
	Boolean	   vacation
    LocalDate  dateCreated
    LocalDate  lastUpdated

    static constraints = {
    	eno unique:true, blank:false
    	ename blank:false
    	sal min:0.0, blank:false
    	orate min:0.0, nullable:true
    	frate min:0.0, nullable:true
    	vacation nullable:true
    }

    static hasMany = [fris:Fri, overtimes:Overtime, absents:Absent, monsals:MonSal, loan:Loan, ded:Ded]

    static mapping ={
        orate defaultValue:0
        frate defaultValue:0
        vacation defaultValue:false
    }

    String toString(){
    	"${eno}"
    }

}