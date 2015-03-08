package com.alyahyan



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.grails.plugin.easygrid.Easygrid
import org.grails.plugin.easygrid.Filter


@Transactional(readOnly = true)
@Easygrid
class FriController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def friJQGrid = {
        domainClass Fri
        gridImpl 'jqgrid'
        jqgrid {
            sortname 'emp'
        }
        export {
            export_title 'Friday'
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
            nod
            frate
            famt
            version {
                type 'version'
            }
        }
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Fri.list(params), model:[friInstanceCount: Fri.count()]
    }

    def show(Fri friInstance) {
        respond friInstance
    }

    def create() {
        respond new Fri(params)
    }

    def grid() {
        
    }

    @Transactional
    def save(Fri friInstance) {
        if (friInstance == null) {
            notFound()
            return
        }

        if (friInstance.hasErrors()) {
            respond friInstance.errors, view:'create'
            return
        }

        def foundEmp = Emp.get(friInstance?.emp?.id)

        friInstance.frate = foundEmp.frate

        friInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'fri.label', default: 'Fri'), friInstance.id])
                redirect friInstance
            }
            '*' { respond friInstance, [status: CREATED] }
        }
    }

    def edit(Fri friInstance) {
        respond friInstance
    }

    @Transactional
    def update(Fri friInstance) {
        if (friInstance == null) {
            notFound()
            return
        }

        if (friInstance.hasErrors()) {
            respond friInstance.errors, view:'edit'
            return
        }

        friInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Fri.label', default: 'Fri'), friInstance.id])
                redirect friInstance
            }
            '*'{ respond friInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Fri friInstance) {

        if (friInstance == null) {
            notFound()
            return
        }

        friInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Fri.label', default: 'Fri'), friInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'fri.label', default: 'Fri'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
