package com.alyahyan

import org.joda.time.*
import org.jadira.usertype.dateandtime.joda.*

class Overtime {

    LocalDate	mmyy //use YearMonth of jodatime
	BigDecimal	hrs
    BigDecimal  otrate
	BigDecimal	otamt
	LocalDate	dateCreated
	LocalDate 	lastUpdated

    static constraints = {
    	emp blank:false,unique:'mmyy'
    	mmyy blank:false
    	hrs blank:false
        otrate blank:false
    	otamt blank:false
    }

    static belongsTo = [emp:Emp]

    static mapping = {
        otamt formula: 'hrs * otrate'
    }

    String toString(){
    	"${emp} - ${mmyy}"
    }

}