package com.alyahyan



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MonSalController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MonSal.list(params), model:[monSalInstanceCount: MonSal.count()]
    }

    def show(MonSal monSalInstance) {
        respond monSalInstance
    }

    def create() {
        respond new MonSal(params)
    }

    @Transactional
    def save(MonSal monSalInstance) {
        if (monSalInstance == null) {
            notFound()
            return
        }

        if (monSalInstance.hasErrors()) {
            respond monSalInstance.errors, view:'create'
            return
        }

        monSalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'monSal.label', default: 'MonSal'), monSalInstance.id])
                redirect monSalInstance
            }
            '*' { respond monSalInstance, [status: CREATED] }
        }
    }

    def edit(MonSal monSalInstance) {
        respond monSalInstance
    }

    @Transactional
    def update(MonSal monSalInstance) {
        if (monSalInstance == null) {
            notFound()
            return
        }

        if (monSalInstance.hasErrors()) {
            respond monSalInstance.errors, view:'edit'
            return
        }

        monSalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MonSal.label', default: 'MonSal'), monSalInstance.id])
                redirect monSalInstance
            }
            '*'{ respond monSalInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MonSal monSalInstance) {

        if (monSalInstance == null) {
            notFound()
            return
        }

        monSalInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MonSal.label', default: 'MonSal'), monSalInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'monSal.label', default: 'MonSal'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
