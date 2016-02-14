package com.talkio



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MsgController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Msg.list(params), model:[msgInstanceCount: Msg.count()]
    }

    def show(Msg msgInstance) {
        respond msgInstance
    }

    def create() {
        respond new Msg(params)
    }

    @Transactional
    def save(Msg msgInstance) {
        if (msgInstance == null) {
            notFound()
            return
        }

        if (msgInstance.hasErrors()) {
            respond msgInstance.errors, view:'create'
            return
        }

        msgInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'msg.label', default: 'Msg'), msgInstance.id])
                redirect msgInstance
            }
            '*' { respond msgInstance, [status: CREATED] }
        }
    }

    def edit(Msg msgInstance) {
        respond msgInstance
    }

    @Transactional
    def update(Msg msgInstance) {
        if (msgInstance == null) {
            notFound()
            return
        }

        if (msgInstance.hasErrors()) {
            respond msgInstance.errors, view:'edit'
            return
        }

        msgInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Msg.label', default: 'Msg'), msgInstance.id])
                redirect msgInstance
            }
            '*'{ respond msgInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Msg msgInstance) {

        if (msgInstance == null) {
            notFound()
            return
        }

        msgInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Msg.label', default: 'Msg'), msgInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'msg.label', default: 'Msg'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
