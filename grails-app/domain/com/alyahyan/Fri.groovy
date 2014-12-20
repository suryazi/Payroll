package com.alyahyan

class Fri {

    Date		mmyy //use YearMonth of jodatime
	BigDecimal	nod
    BigDecimal  frate
	BigDecimal	famt
	Date		dateCreated
	Date 		lastUpdated

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