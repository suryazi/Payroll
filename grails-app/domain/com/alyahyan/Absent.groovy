package com.alyahyan

import org.joda.time.*
import org.jadira.usertype.dateandtime.joda.*

class Absent {

    LocalDate	mmyy //use YearMonth of jodatime
	BigDecimal	nod
	BigDecimal	fine
    BigDecimal  tot
	LocalDate	dateCreated
	LocalDate	lastUpdated

    static constraints = {
    	emp  blank:false, unique:'mmyy'
    	mmyy blank:false
    	nod blank:false, min:0.0
    	fine nullable:true, min:0.0
        tot blank:false, min:0.0
    }

    static belongsTo = [emp:Emp]

    static mapping = {
        fine defaultValue: 0.0
    	tot formula: 'nod + fine'
    }

    String toString(){
    	"${emp} - ${mmyy}"
    }
}