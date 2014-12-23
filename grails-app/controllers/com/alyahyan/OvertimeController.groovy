package com.alyahyan



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OvertimeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Overtime.list(params), model:[overtimeInstanceCount: Overtime.count()]
    }

    def show(Overtime overtimeInstance) {
        respond overtimeInstance
    }

    def create() {
        respond new Overtime(params)
    }

    @Transactional
    def save(Overtime overtimeInstance) {
        if (overtimeInstance == null) {
            notFound()
            return
        }

        if (overtimeInstance.hasErrors()) {
            respond overtimeInstance.errors, view:'create'
            return
        }

        overtimeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'overtime.label', default: 'Overtime'), overtimeInstance.id])
                redirect overtimeInstance
            }
            '*' { respond overtimeInstance, [status: CREATED] }
        }
    }

    def edit(Overtime overtimeInstance) {
        respond overtimeInstance
    }

    @Transactional
    def update(Overtime overtimeInstance) {
        if (overtimeInstance == null) {
            notFound()
            return
        }

        if (overtimeInstance.hasErrors()) {
            respond overtimeInstance.errors, view:'edit'
            return
        }

        overtimeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Overtime.label', default: 'Overtime'), overtimeInstance.id])
                redirect overtimeInstance
            }
            '*'{ respond overtimeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Overtime overtimeInstance) {

        if (overtimeInstance == null) {
            notFound()
            return
        }

        overtimeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Overtime.label', default: 'Overtime'), overtimeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'overtime.label', default: 'Overtime'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
