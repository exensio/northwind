package com.exensio.northwind


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * ShippersController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class ShippersController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Shippers.list(params), model: [shippersInstanceCount: Shippers.count()]
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Shippers.list(params), model: [shippersInstanceCount: Shippers.count()]
    }

    def show(Shippers shippersInstance) {
        respond shippersInstance
    }

    def create() {
        respond new Shippers(params)
    }

    @Transactional
    def save(Shippers shippersInstance) {
        if (shippersInstance == null) {
            notFound()
            return
        }

        if (shippersInstance.hasErrors()) {
            respond shippersInstance.errors, view: 'create'
            return
        }

        shippersInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'shippersInstance.label', default: 'Shippers'), shippersInstance.id])
                redirect shippersInstance
            }
            '*' { respond shippersInstance, [status: CREATED] }
        }
    }

    def edit(Shippers shippersInstance) {
        respond shippersInstance
    }

    @Transactional
    def update(Shippers shippersInstance) {
        if (shippersInstance == null) {
            notFound()
            return
        }

        if (shippersInstance.hasErrors()) {
            respond shippersInstance.errors, view: 'edit'
            return
        }

        shippersInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Shippers.label', default: 'Shippers'), shippersInstance.id])
                redirect shippersInstance
            }
            '*' { respond shippersInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Shippers shippersInstance) {

        if (shippersInstance == null) {
            notFound()
            return
        }

        shippersInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Shippers.label', default: 'Shippers'), shippersInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'shippersInstance.label', default: 'Shippers'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
