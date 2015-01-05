package com.alyahyan

import org.joda.time.*
import org.jadira.usertype.dateandtime.joda.*

class Ded {

	LocalDate	mmyy
	BigDecimal	dedamt
	LocalDate	dateCreated
	LocalDate	lastUpdated


    static constraints = {
    	emp blank:false, unique:'mmyy'
    	loan blank:false
    	mmyy blank:false
    	dedamt blank:false, min:0.0
    }

    static belongsTo = [emp:Emp, loan:Loan]

    String toString(){
    	"${emp} - ${mmyy}"
    }
}
