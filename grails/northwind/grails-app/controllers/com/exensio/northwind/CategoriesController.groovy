package com.exensio.northwind


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * CategoriesController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class CategoriesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Categories.list(params), model: [categoriesInstanceCount: Categories.count()]
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Categories.list(params), model: [categoriesInstanceCount: Categories.count()]
    }

    def show(Categories categoriesInstance) {
        respond categoriesInstance
    }

    def create() {
        respond new Categories(params)
    }

    @Transactional
    def save(Categories categoriesInstance) {
        if (categoriesInstance == null) {
            notFound()
            return
        }

        if (categoriesInstance.hasErrors()) {
            respond categoriesInstance.errors, view: 'create'
            return
        }

        categoriesInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'categoriesInstance.label', default: 'Categories'), categoriesInstance.id])
                redirect categoriesInstance
            }
            '*' { respond categoriesInstance, [status: CREATED] }
        }
    }

    def edit(Categories categoriesInstance) {
        respond categoriesInstance
    }

    @Transactional
    def update(Categories categoriesInstance) {
        if (categoriesInstance == null) {
            notFound()
            return
        }

        if (categoriesInstance.hasErrors()) {
            respond categoriesInstance.errors, view: 'edit'
            return
        }

        categoriesInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Categories.label', default: 'Categories'), categoriesInstance.id])
                redirect categoriesInstance
            }
            '*' { respond categoriesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Categories categoriesInstance) {

        if (categoriesInstance == null) {
            notFound()
            return
        }

        categoriesInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Categories.label', default: 'Categories'), categoriesInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'categoriesInstance.label', default: 'Categories'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def viewImage(Categories categoriesInstance) {
        //retrieve photo code here
        response.setHeader("Content-disposition", "attachment; filename=${categoriesInstance.categoryname}")
        response.contentType = 'image/jpg'
        response.contentLength = categoriesInstance.picture.size()
        response.outputStream << categoriesInstance.picture
        response.outputStream.flush()
        return;
    }
}
