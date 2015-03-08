package com.alyahyan



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.grails.plugin.easygrid.Easygrid
import org.grails.plugin.easygrid.Filter


@Transactional(readOnly = true)
@Easygrid
class OvertimeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def overtimeJQGrid = {
        domainClass Overtime
        gridImpl 'jqgrid'
        jqgrid{
            sortname 'emp'
        }
        export{
            export_title 'Overtime'
            pdf{
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
            hrs
            otrate
            otamt
            version {
                type 'version'
            }
        }
    }

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

    def grid() {

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

        def foundEmp = Emp.get(overtimeInstance?.emp?.id)

        overtimeInstance.otrate = foundEmp.orate

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
