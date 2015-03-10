package com.alyahyan



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.grails.plugin.easygrid.Easygrid
import org.grails.plugin.easygrid.Filter

@Transactional(readOnly = true)
@Easygrid
class LoanController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def loanSelectionGrid={
        domainClass Loan
        gridImpl 'jqgrid'
        inlineEdit false
        jqgrid{
            width '900'
        }
        columns{
            id{
                type 'id'
            }
            emp {
                type 'id'
            }
            mmyy
            loan
            rem
            ded
            noded
        }
        autocomplete{
            idProp 'id'
            labelValue{val, params ->
                "${val.mmyy}"
            }
            textBoxFilterClosure{
                ilike('mmyy',"${params.term}%")
            }
        }
    }


    def loanJQGrid = {
        domainClass Loan
        gridImpl 'jqgrid'
        jqgrid {
            sortname 'emp'
        }
        export {
            export_title 'Loan'
            pdf {
                'border.color' java.awt.Color.BLUE
            }
        }
        columns {
            id {
                type 'id'
            }
            emp {
                type 'id'
            }
            mmyy
            loan
            rem
            ded
            noded
            version {
                type 'version'
            }
        }
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Loan.list(params), model:[loanInstanceCount: Loan.count()]
    }

    def show(Loan loanInstance) {
        respond loanInstance
    }

    def create() {
        respond new Loan(params)
    }

    def grid() {
        
    }

    @Transactional
    def save(Loan loanInstance) {
        if (loanInstance == null) {
            notFound()
            return
        }

        if (loanInstance.hasErrors()) {
            respond loanInstance.errors, view:'create'
            return
        }

        loanInstance.rem = loanInstance.loan

        loanInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'loan.label', default: 'Loan'), loanInstance.id])
                redirect loanInstance
            }
            '*' { respond loanInstance, [status: CREATED] }
        }
    }

    def edit(Loan loanInstance) {
        respond loanInstance
    }

    @Transactional
    def update(Loan loanInstance) {
        if (loanInstance == null) {
            notFound()
            return
        }

        if (loanInstance.hasErrors()) {
            respond loanInstance.errors, view:'edit'
            return
        }

        loanInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Loan.label', default: 'Loan'), loanInstance.id])
                redirect loanInstance
            }
            '*'{ respond loanInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Loan loanInstance) {

        if (loanInstance == null) {
            notFound()
            return
        }

        loanInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Loan.label', default: 'Loan'), loanInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'loan.label', default: 'Loan'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
