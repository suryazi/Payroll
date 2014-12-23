package com.alyahyan



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmpController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Emp.list(params), model:[empInstanceCount: Emp.count()]
    }

    def show(Emp empInstance) {
        respond empInstance
    }

    def create() {
        respond new Emp(params)
    }

    @Transactional
    def save(Emp empInstance) {
        if (empInstance == null) {
            notFound()
            return
        }

        if (empInstance.hasErrors()) {
            respond empInstance.errors, view:'create'
            return
        }

        empInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'emp.label', default: 'Emp'), empInstance.id])
                redirect empInstance
            }
            '*' { respond empInstance, [status: CREATED] }
        }
    }

    def edit(Emp empInstance) {
        respond empInstance
    }

    @Transactional
    def update(Emp empInstance) {
        if (empInstance == null) {
            notFound()
            return
        }

        if (empInstance.hasErrors()) {
            respond empInstance.errors, view:'edit'
            return
        }

        empInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Emp.label', default: 'Emp'), empInstance.id])
                redirect empInstance
            }
            '*'{ respond empInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Emp empInstance) {

        if (empInstance == null) {
            notFound()
            return
        }

        empInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Emp.label', default: 'Emp'), empInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'emp.label', default: 'Emp'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
