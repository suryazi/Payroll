package com.alyahyan



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AbsentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Absent.list(params), model:[absentInstanceCount: Absent.count()]
    }

    def show(Absent absentInstance) {
        respond absentInstance
    }

    def create() {
        respond new Absent(params)
    }

    @Transactional
    def save(Absent absentInstance) {
        if (absentInstance == null) {
            notFound()
            return
        }

        if (absentInstance.hasErrors()) {
            respond absentInstance.errors, view:'create'
            return
        }

        absentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'absent.label', default: 'Absent'), absentInstance.id])
                redirect absentInstance
            }
            '*' { respond absentInstance, [status: CREATED] }
        }
    }

    def edit(Absent absentInstance) {
        respond absentInstance
    }

    @Transactional
    def update(Absent absentInstance) {
        if (absentInstance == null) {
            notFound()
            return
        }

        if (absentInstance.hasErrors()) {
            respond absentInstance.errors, view:'edit'
            return
        }

        absentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Absent.label', default: 'Absent'), absentInstance.id])
                redirect absentInstance
            }
            '*'{ respond absentInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Absent absentInstance) {

        if (absentInstance == null) {
            notFound()
            return
        }

        absentInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Absent.label', default: 'Absent'), absentInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'absent.label', default: 'Absent'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
