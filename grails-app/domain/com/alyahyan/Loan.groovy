package com.alyahyan

import org.joda.time.*
import org.jadira.usertype.dateandtime.joda.*

class Loan {

	LocalDate	mmyy
	BigDecimal loan
	BigDecimal rem
	BigDecimal ded
	Boolean		noded
	LocalDate	dateCreated
	LocalDate	lastUpdated

    static constraints = {
    	emp blank:false, unique:'mmyy'
    	mmyy blank:false
    	loan blank:false, min:0.0
    	ded blank:false, min:0.0
    	rem (blank:false, min:0.0, validator:{val, obj ->
    			return val <= obj.loan
    	})
    	noded nullable:true
    }

    static hasMany = [deductions:Ded]

    static belongsTo = [emp:Emp]

    String toString(){
    	"${emp} - ${mmyy}"
    }
}
