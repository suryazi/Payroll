package com.alyahyan



import grails.test.mixin.*
import spock.lang.*

@TestFor(DedController)
@Mock(Ded)
class DedControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.dedInstanceList
            model.dedInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.dedInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def ded = new Ded()
            ded.validate()
            controller.save(ded)

        then:"The create view is rendered again with the correct model"
            model.dedInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            ded = new Ded(params)

            controller.save(ded)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/ded/show/1'
            controller.flash.message != null
            Ded.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def ded = new Ded(params)
            controller.show(ded)

        then:"A model is populated containing the domain instance"
            model.dedInstance == ded
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def ded = new Ded(params)
            controller.edit(ded)

        then:"A model is populated containing the domain instance"
            model.dedInstance == ded
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/ded/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def ded = new Ded()
            ded.validate()
            controller.update(ded)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.dedInstance == ded

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            ded = new Ded(params).save(flush: true)
            controller.update(ded)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/ded/show/$ded.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/ded/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def ded = new Ded(params).save(flush: true)

        then:"It exists"
            Ded.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(ded)

        then:"The instance is deleted"
            Ded.count() == 0
            response.redirectedUrl == '/ded/index'
            flash.message != null
    }
}
