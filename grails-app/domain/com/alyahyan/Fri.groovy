package com.alyahyan

import org.joda.time.*
import org.jadira.usertype.dateandtime.joda.*

class Fri {

    LocalDate	mmyy //use YearMonth of jodatime
	BigDecimal	nod
    BigDecimal  frate
	BigDecimal	famt
	LocalDate	dateCreated
	LocalDate	lastUpdated

    static constraints = {
    	emp blank:false, unique: 'mmyy'
    	mmyy blank:false
    	nod blank:false, min:0.0
        frate blank:false, min:0.0
    	famt blank:false, min:0.0
    }

    static belongsTo = [emp:Emp]

    static mapping = {
        famt formula: 'nod * frate'
    }

    String toString(){
    	"${emp} - ${mmyy}"
    }
    
}