package com.exensio.northwind


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * EmployeesController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class EmployeesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Employees.list(params), model: [employeesInstanceCount: Employees.count()]
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Employees.list(params), model: [employeesInstanceCount: Employees.count()]
    }

    def show(Employees employeesInstance) {
        respond employeesInstance
    }

    def create() {
        respond new Employees(params)
    }

    @Transactional
    def save(Employees employeesInstance) {
        if (employeesInstance == null) {
            notFound()
            return
        }

        if (employeesInstance.hasErrors()) {
            respond employeesInstance.errors, view: 'create'
            return
        }

        employeesInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'employeesInstance.label', default: 'Employees'), employeesInstance.id])
                redirect employeesInstance
            }
            '*' { respond employeesInstance, [status: CREATED] }
        }
    }

    def edit(Employees employeesInstance) {
        respond employeesInstance
    }

    @Transactional
    def update(Employees employeesInstance) {
        if (employeesInstance == null) {
            notFound()
            return
        }

        if (employeesInstance.hasErrors()) {
            respond employeesInstance.errors, view: 'edit'
            return
        }

        employeesInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Employees.label', default: 'Employees'), employeesInstance.id])
                redirect employeesInstance
            }
            '*' { respond employeesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Employees employeesInstance) {

        if (employeesInstance == null) {
            notFound()
            return
        }

        employeesInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Employees.label', default: 'Employees'), employeesInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'employeesInstance.label', default: 'Employees'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
