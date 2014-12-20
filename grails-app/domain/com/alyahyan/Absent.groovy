package com.alyahyan

class Absent {

    Date		mmyy //use YearMonth of jodatime
	BigDecimal	nod
	BigDecimal	fine
    BigDecimal  tot
	Date		dateCreated
	Date 		lastUpdated

    static constraints = {
    	emp  blank:false, unique:'mmyy'
    	mmyy blank:false
    	nod blank:false, min:0.0
    	fine nullable:true, min:0.0
    }

    static belongsTo = [emp:Emp]

    static mapping = {
        fine defaultValue: 0
    	tot formula: 'nod + fine'
    }

    String toString(){
    	"${emp} - ${mmyy}"
    }
    
}