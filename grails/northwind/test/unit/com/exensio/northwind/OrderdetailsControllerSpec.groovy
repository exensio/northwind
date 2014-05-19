package com.exensio.northwind



import grails.test.mixin.*
import spock.lang.*

@TestFor(OrderdetailsController)
@Mock(Orderdetails)
class OrderdetailsControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.orderdetailsInstanceList
            model.orderdetailsInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.orderdetailsInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def orderdetails = new Orderdetails()
            orderdetails.validate()
            controller.save(orderdetails)

        then:"The create view is rendered again with the correct model"
            model.orderdetailsInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            orderdetails = new Orderdetails(params)

            controller.save(orderdetails)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/orderdetails/show/1'
            controller.flash.message != null
            Orderdetails.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def orderdetails = new Orderdetails(params)
            controller.show(orderdetails)

        then:"A model is populated containing the domain instance"
            model.orderdetailsInstance == orderdetails
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def orderdetails = new Orderdetails(params)
            controller.edit(orderdetails)

        then:"A model is populated containing the domain instance"
            model.orderdetailsInstance == orderdetails
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/orderdetails/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def orderdetails = new Orderdetails()
            orderdetails.validate()
            controller.update(orderdetails)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.orderdetailsInstance == orderdetails

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            orderdetails = new Orderdetails(params).save(flush: true)
            controller.update(orderdetails)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/orderdetails/show/$orderdetails.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/orderdetails/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def orderdetails = new Orderdetails(params).save(flush: true)

        then:"It exists"
            Orderdetails.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(orderdetails)

        then:"The instance is deleted"
            Orderdetails.count() == 0
            response.redirectedUrl == '/orderdetails/index'
            flash.message != null
    }
}
