package com.alyahyan

import org.joda.time.*
import org.jadira.usertype.dateandtime.joda.*

class MonSal {

    LocalDate	mmyy //use YearMonth of jodatime
	BigDecimal 	sal
	BigDecimal	loan
	BigDecimal	ded
	BigDecimal	net
    LocalDate   dateCreated
    LocalDate   lastUpdated

    static constraints = {
    	emp	 blank:false, unique:'mmyy'
    	mmyy blank:false
    	sal blank:false
    	loan nullable:true
    	ded	nullable:true
    	net	blank:false
    }

    static belongsTo = [emp:Emp]

    String toString(){
    	"${emp} - ${mmyy}"
    }

}