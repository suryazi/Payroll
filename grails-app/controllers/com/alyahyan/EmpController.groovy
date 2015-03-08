package com.alyahyan

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.grails.plugin.easygrid.Easygrid
import org.grails.plugin.easygrid.Filter
import org.springframework.dao.DataIntegrityViolationException


@Transactional(readOnly = true)
@Easygrid
class EmpController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def empSelectionGrid={
        domainClass Emp
        gridImpl 'jqgrid'
        inlineEdit false
        jqgrid{
            width '900'
        }
        columns{
            id{
                type 'id'
            }
            eno
            ename
            div{
                type 'id'
            }
            sec{
                type 'id'
            }
            sal
            orate
            frate
            vacation
        }
        autocomplete{
            idProp 'id'
            labelValue{val, params ->
                "${val.ename}"
            }
            textBoxFilterClosure{
                ilike('ename',"${params.term}%")
            }
        }
    }

    def empJQGrid = {
        domainClass Emp
        gridImpl 'jqgrid'
        jqgrid{
            sortname 'eno'
        }
        export {
            export_title 'Employee'
            pdf{
                'border.color' java.awt.Color.BLUE
            }
        }
        columns {
            id {
                type 'id'
            }
            eno
            ename
            div
            {
                type 'id'
            }
            sec
            {
                type 'id'
            }
            sal
            orate
            frate
            vacation
            version {
                type 'version'
            }
        }
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Emp.list(params), model:[empInstanceCount: Emp.count()]
    }

    def show(Emp empInstance) {
        respond empInstance
    }

    def create() {
        respond new Emp(params)
    }

    def grid() {

    }

    @Transactional
    def save(Emp empInstance) {
        if (empInstance == null) {
            notFound()
            return
        }

        if (empInstance.hasErrors()) {
            respond empInstance.errors, view:'create'
            return
        }

        empInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'emp.label', default: 'Emp'), empInstance.id])
                redirect empInstance
            }
            '*' { respond empInstance, [status: CREATED] }
        }
    }

    def edit(Emp empInstance) {
        respond empInstance
    }

    @Transactional
    def update(Emp empInstance) {
        if (empInstance == null) {
            notFound()
            return
        }

        if (empInstance.hasErrors()) {
            respond empInstance.errors, view:'edit'
            return
        }

        empInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Emp.label', default: 'Emp'), empInstance.id])
                redirect empInstance
            }
            '*'{ respond empInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Emp empInstance) {

        if (empInstance == null) {
            notFound()
            return
        }

        empInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Emp.label', default: 'Emp'), empInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'emp.label', default: 'Emp'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
