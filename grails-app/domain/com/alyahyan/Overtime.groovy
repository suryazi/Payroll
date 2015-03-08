package com.alyahyan

import org.joda.time.*
import org.jadira.usertype.dateandtime.joda.*

class Overtime {

    String	mmyy //use YearMonth of jodatime
	BigDecimal	hrs
    BigDecimal  otrate
	BigDecimal	otamt
	LocalDate	dateCreated
	LocalDate 	lastUpdated

    static constraints = {
    	emp blank:false,unique:'mmyy'
    	mmyy blank:false
    	hrs blank:false, min:0.0
        otrate nullable:true, min:0.0
    	otamt nullable:true, min:0.0
    }

    static belongsTo = [emp:Emp]

    static mapping = {
        otamt formula: 'hrs * otrate'
    }

    String toString(){
    	"${emp} - ${mmyy}"
    }

}