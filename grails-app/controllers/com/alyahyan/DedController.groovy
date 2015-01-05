package com.alyahyan



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DedController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Ded.list(params), model:[dedInstanceCount: Ded.count()]
    }

    def show(Ded dedInstance) {
        respond dedInstance
    }

    def create() {
        respond new Ded(params)
    }

    @Transactional
    def save(Ded dedInstance) {
        if (dedInstance == null) {
            notFound()
            return
        }

        if (dedInstance.hasErrors()) {
            respond dedInstance.errors, view:'create'
            return
        }

        dedInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'ded.label', default: 'Ded'), dedInstance.id])
                redirect dedInstance
            }
            '*' { respond dedInstance, [status: CREATED] }
        }
    }

    def edit(Ded dedInstance) {
        respond dedInstance
    }

    @Transactional
    def update(Ded dedInstance) {
        if (dedInstance == null) {
            notFound()
            return
        }

        if (dedInstance.hasErrors()) {
            respond dedInstance.errors, view:'edit'
            return
        }

        dedInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Ded.label', default: 'Ded'), dedInstance.id])
                redirect dedInstance
            }
            '*'{ respond dedInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Ded dedInstance) {

        if (dedInstance == null) {
            notFound()
            return
        }

        dedInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Ded.label', default: 'Ded'), dedInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'ded.label', default: 'Ded'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
