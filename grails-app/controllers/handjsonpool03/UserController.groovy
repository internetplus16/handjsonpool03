package handjsonpool03
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserController {

    def login = {}

    def authenticate={
        def user=User.findByLoginNameAndPassword(params.loginName,params.password.encodeAsSHA())
        if(user){
            session.user=user
            flash.message="Hello! ${user.loginName}!"
            redirect(url:"http://localhost:8080/handjsonpool03")
        }else{
            flash.message="Sorry,${params.loginName}.Please try again."
            redirect action:"login"
        }
    }


    def editp = { }


    def logout = {
        flash.message="Goodbye! ${session.user.loginName}"
        session.user=null
        redirect(action:"login")
    }

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def index(Integer max) {
        if(!session.user){
            redirect(controller:"user",action:"login")
            return false
        }else if(!session.user.admin){
            for(user in User.list(params)){
                if(user.loginName.toString() ==session.user.loginName.toString()){
                    redirect(url: "http://localhost:8080/handjsonpool03/user/show/${session.user.id}")
                }
            }
        }else{
            params.max = Math.min(max ?: 5, 100)
            respond User.list(params), model:[userInstanceCount: User.count()]
        }
    }

    def show(User userInstance) {
        respond userInstance
    }
    def create() {
        respond new User(params)
    }
    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }

        userInstance.password=userInstance.password.encodeAsSHA()
        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*'{ respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
