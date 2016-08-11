package handjsonpool03



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProjectController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def beforeInterceptor=[action:this.&auth,except:['index','show']]
    def auth() {
        if (!session.user) {
            redirect(controller: "user", action: "login")
            return false
        }
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 5, 100)
        respond Project.list(params), model:[projectInstanceCount: Project.count()]
    }

    def show(Project projectInstance) {
        respond projectInstance
    }


    def create() {
        respond new Project(params)
    }


    @Transactional
    def save(Project projectInstance) {
        if (projectInstance == null) {
            notFound()
            return
        }

        if (projectInstance.hasErrors()) {
            respond projectInstance.errors, view:'create'
            return
        }

        if(session.user.loginName!=projectInstance.user.loginName){
            flash.message="Sorry${session.user.loginName}.You can only edit your own projects."
            redirect (action: "create")
            return false
        }else{
            projectInstance.save flush:true
            request.withFormat {
                form multipartForm {
                    flash.message = message(code: 'default.created.message', args: [message(code: 'project.label', default: 'Project'), projectInstance.id])
                    redirect projectInstance
                }
                '*' { respond projectInstance, [status: CREATED] }
            }
        }
    }

    def edit (Project projectInstance){

        //limit editing to the original author
        if (session.user.loginName==projectInstance.user.loginName||session.user.admin){
            respond projectInstance
        }else {
            flash.message="Sorry${session.user.loginName},the project you edited dose not belong to you.You can only edit your own projects."
            redirect(action: "index")
        }
    }


    @Transactional
    def update(Project projectInstance) {
        if (projectInstance == null) {
            notFound()
            return
        }

        if (projectInstance.hasErrors()) {
            respond projectInstance.errors, view:'edit'
            return
        }

        projectInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Project.label', default: 'Project'), projectInstance.id])
                redirect projectInstance
            }
            '*'{ respond projectInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Project projectInstance) {

        if (session.user.loginName==projectInstance.user.loginName||session.user.admin){
            if (projectInstance == null) {
                notFound()
                return
            }
            projectInstance.delete flush:true

            request.withFormat {
                form multipartForm {
                    flash.message = message(code: 'default.deleted.message', args: [message(code: 'Project.label', default: 'Project'), projectInstance.id])
                    redirect action:"index", method:"GET"
                }
                '*'{ render status: NO_CONTENT }
            }
        }else {
            flash.message="Sorry${session.user.loginName},the project you deleted dose not belong to you.You can not manipulate others' projects."
            redirect(action: "index")
        }

    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'project.label', default: 'Project'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
