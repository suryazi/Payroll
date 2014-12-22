package com.payroll

class PayrollTagLib {
    static namespace ="payroll"
    static defaultEncodeAs = 'html'
    //static encodeAsForTags = [tagName: 'raw']
    
    def thisYear = {
        out << Calendar.getInstance().get(Calendar.YEAR)
    }

    def copyright ={ attrs, body ->
        out << "${attrs['startYear']} - ${thisYear()}, ${body()}"
        out << " All Rights Reserved."
    }
}
