package com.alyahyan



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LoanController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

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
