package com.alyahyan



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DivController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Div.list(params), model:[divInstanceCount: Div.count()]
    }

    def show(Div divInstance) {
        respond divInstance
    }

    def create() {
        respond new Div(params)
    }

    @Transactional
    def save(Div divInstance) {
        if (divInstance == null) {
            notFound()
            return
        }

        if (divInstance.hasErrors()) {
            respond divInstance.errors, view:'create'
            return
        }

        divInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'div.label', default: 'Div'), divInstance.id])
                redirect divInstance
            }
            '*' { respond divInstance, [status: CREATED] }
        }
    }

    def edit(Div divInstance) {
        respond divInstance
    }

    @Transactional
    def update(Div divInstance) {
        if (divInstance == null) {
            notFound()
            return
        }

        if (divInstance.hasErrors()) {
            respond divInstance.errors, view:'edit'
            return
        }

        divInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Div.label', default: 'Div'), divInstance.id])
                redirect divInstance
            }
            '*'{ respond divInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Div divInstance) {

        if (divInstance == null) {
            notFound()
            return
        }

        divInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Div.label', default: 'Div'), divInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'div.label', default: 'Div'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
