package com.alyahyan



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.grails.plugin.easygrid.Easygrid
import org.springframework.dao.DataIntegrityViolationException

@Transactional(readOnly = true)
@Easygrid
class DivController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

     def divJQGrid = {
        domainClass Div
        gridImpl 'jqgrid'
        jqgrid{
            sortname 'divname'
        }
        export {
            export_title 'Division'
            pdf{
                'border.color' java.awt.Color.BLUE
            }
        }
        columns {
            id {
                type 'id'
            }
            divname
            version {
                type 'version'
            }
        }
    }

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

    def grid() {
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
