package handjsonpool03

class LoginTagLib {
    def loginControl={
                if(request.getSession(false)&&session.user){
            out<<"Hello! ${session.user.loginName} &nbsp;&nbsp;&nbsp; "
            out<<"""${link(action:"logout",controller:"user"){"Logout"}}"""
        }else{
            out<<"""${link(action:"login",controller:"user"){"Login"}}"""
        }
    }
}
