package com.alyahyan

import org.joda.time.*
import org.jadira.usertype.dateandtime.joda.*

class Fri {

    YearMonth	mmyy //use YearMonth of jodatime
	BigDecimal	nod
    BigDecimal  frate
	BigDecimal	famt
	LocalDate	dateCreated
	LocalDate	lastUpdated

    static constraints = {
    	emp blank:false, unique: 'mmyy'
    	mmyy blank:false
    	nod blank:false
        frate blank:false
    	famt blank:false
    }

    static belongsTo = [emp:Emp]

    static mapping = {
        famt formula: 'nod * frate'
    }

    String toString(){
    	"${emp} - ${mmyy}"
    }
    
}