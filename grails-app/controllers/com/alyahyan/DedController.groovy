package com.alyahyan



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.grails.plugin.easygrid.Easygrid
import org.grails.plugin.easygrid.Filter

@Transactional(readOnly = true)
@Easygrid
class DedController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def dedJQGrid = {
        domainClass Ded
        gridImpl 'jqgrid'
        jqgrid {
            sortname 'emp'
        }
        export {
            export_title 'Deduction'
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
            loan {
                type 'id'
            }
            mmyy
            dedamt
            version {
                type 'version'
            }
        }
    }

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

    def grid() {

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
