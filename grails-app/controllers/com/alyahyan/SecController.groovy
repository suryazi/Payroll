package com.alyahyan



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.grails.plugin.easygrid.Easygrid

@Transactional(readOnly = true)
@Easygrid
class SecController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def secSelectionGrid={
        domainClass Sec
        gridImpl 'jqgrid'
        inlineEdit false
        jqgrid{
            width '900'
        }
        columns{
            id{
                type 'id'
            }
            div
            secname
        }
        autocomplete{
            idProp 'id'
            labelValue{val, params ->
                "${val.secname}"
            }
            textBoxFilterClosure{
                ilike('secname',"${params.term}%")
            }
            constraintsFilterClosure { params ->
                if (params.div) {
                    eq('div', params.div)
                }
            }
        }
    }

    def secJQGrid = {
        domainClass Sec
        gridImpl 'jqgrid'
        jqgrid{
            sortname 'secname'
        }
        export {
            export_title 'Section'
            pdf{
                'border.color' java.awt.Color.BLUE
            }
        }
        columns {
            id {
                type 'id'
            }
            div.divname
            secname
            version {
                type 'version'
            }
        }
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Sec.list(params), model:[secInstanceCount: Sec.count()]
    }

    def show(Sec secInstance) {
        respond secInstance
    }

    def create() {
        respond new Sec(params)
    }

    def grid(){
    }

    @Transactional
    def save(Sec secInstance) {
        if (secInstance == null) {
            notFound()
            return
        }

        if (secInstance.hasErrors()) {
            respond secInstance.errors, view:'create'
            return
        }

        secInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sec.label', default: 'Sec'), secInstance.id])
                redirect secInstance
            }
            '*' { respond secInstance, [status: CREATED] }
        }
    }

    def edit(Sec secInstance) {
        respond secInstance
    }

    @Transactional
    def update(Sec secInstance) {
        if (secInstance == null) {
            notFound()
            return
        }

        if (secInstance.hasErrors()) {
            respond secInstance.errors, view:'edit'
            return
        }

        secInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Sec.label', default: 'Sec'), secInstance.id])
                redirect secInstance
            }
            '*'{ respond secInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Sec secInstance) {

        if (secInstance == null) {
            notFound()
            return
        }

        secInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Sec.label', default: 'Sec'), secInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'sec.label', default: 'Sec'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
