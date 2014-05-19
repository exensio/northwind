package com.exensio.northwind


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * CustomersController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class CustomersController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Customers.list(params), model: [customersInstanceCount: Customers.count()]
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Customers.list(params), model: [customersInstanceCount: Customers.count()]
    }

    def show(Customers customersInstance) {
        respond customersInstance
    }

    def create() {
        respond new Customers(params)
    }

    @Transactional
    def save(Customers customersInstance) {
        if (customersInstance == null) {
            notFound()
            return
        }

        if (customersInstance.hasErrors()) {
            respond customersInstance.errors, view: 'create'
            return
        }

        customersInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'customersInstance.label', default: 'Customers'), customersInstance.id])
                redirect customersInstance
            }
            '*' { respond customersInstance, [status: CREATED] }
        }
    }

    def edit(Customers customersInstance) {
        respond customersInstance
    }

    @Transactional
    def update(Customers customersInstance) {
        if (customersInstance == null) {
            notFound()
            return
        }

        if (customersInstance.hasErrors()) {
            respond customersInstance.errors, view: 'edit'
            return
        }

        customersInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Customers.label', default: 'Customers'), customersInstance.id])
                redirect customersInstance
            }
            '*' { respond customersInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Customers customersInstance) {

        if (customersInstance == null) {
            notFound()
            return
        }

        customersInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Customers.label', default: 'Customers'), customersInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'customersInstance.label', default: 'Customers'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
