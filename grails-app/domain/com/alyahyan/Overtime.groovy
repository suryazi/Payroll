package com.alyahyan

class Overtime {

    Date		mmyy //use YearMonth of jodatime
	BigDecimal	hrs
    BigDecimal  otrate
	BigDecimal	otamt
	Date		dateCreated
	Date 		lastUpdated

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