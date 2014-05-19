package com.exensio.northwind


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * SuppliersController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class SuppliersController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Suppliers.list(params), model: [suppliersInstanceCount: Suppliers.count()]
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Suppliers.list(params), model: [suppliersInstanceCount: Suppliers.count()]
    }

    def show(Suppliers suppliersInstance) {
        respond suppliersInstance
    }

    def create() {
        respond new Suppliers(params)
    }

    @Transactional
    def save(Suppliers suppliersInstance) {
        if (suppliersInstance == null) {
            notFound()
            return
        }

        if (suppliersInstance.hasErrors()) {
            respond suppliersInstance.errors, view: 'create'
            return
        }

        suppliersInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'suppliersInstance.label', default: 'Suppliers'), suppliersInstance.id])
                redirect suppliersInstance
            }
            '*' { respond suppliersInstance, [status: CREATED] }
        }
    }

    def edit(Suppliers suppliersInstance) {
        respond suppliersInstance
    }

    @Transactional
    def update(Suppliers suppliersInstance) {
        if (suppliersInstance == null) {
            notFound()
            return
        }

        if (suppliersInstance.hasErrors()) {
            respond suppliersInstance.errors, view: 'edit'
            return
        }

        suppliersInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Suppliers.label', default: 'Suppliers'), suppliersInstance.id])
                redirect suppliersInstance
            }
            '*' { respond suppliersInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Suppliers suppliersInstance) {

        if (suppliersInstance == null) {
            notFound()
            return
        }

        suppliersInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Suppliers.label', default: 'Suppliers'), suppliersInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'suppliersInstance.label', default: 'Suppliers'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
