package com.exensio.northwind


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * OrderdetailsController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class OrderdetailsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        Orderdetails[] orderdetails = Orderdetails.list(params)
        Products product = orderdetails[0].product
        def name = product.productname
        respond Orderdetails.list(params), model:[orderdetailsInstanceCount: Orderdetails.count()]
    }

	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Orderdetails.list(params), model:[orderdetailsInstanceCount: Orderdetails.count()]
    }

    def show(Orderdetails orderdetailsInstance) {
        respond orderdetailsInstance
    }

    def create() {
        respond new Orderdetails(params)
    }

    @Transactional
    def save(Orderdetails orderdetailsInstance) {
        if (orderdetailsInstance == null) {
            notFound()
            return
        }

        if (orderdetailsInstance.hasErrors()) {
            respond orderdetailsInstance.errors, view:'create'
            return
        }

        orderdetailsInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'orderdetailsInstance.label', default: 'Orderdetails'), orderdetailsInstance.id])
                redirect orderdetailsInstance
            }
            '*' { respond orderdetailsInstance, [status: CREATED] }
        }
    }

    def edit(Orderdetails orderdetailsInstance) {
        respond orderdetailsInstance
    }

    @Transactional
    def update(Orderdetails orderdetailsInstance) {
        if (orderdetailsInstance == null) {
            notFound()
            return
        }

        if (orderdetailsInstance.hasErrors()) {
            respond orderdetailsInstance.errors, view:'edit'
            return
        }

        orderdetailsInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Orderdetails.label', default: 'Orderdetails'), orderdetailsInstance.id])
                redirect orderdetailsInstance
            }
            '*'{ respond orderdetailsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Orderdetails orderdetailsInstance) {

        if (orderdetailsInstance == null) {
            notFound()
            return
        }

        orderdetailsInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Orderdetails.label', default: 'Orderdetails'), orderdetailsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'orderdetailsInstance.label', default: 'Orderdetails'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
