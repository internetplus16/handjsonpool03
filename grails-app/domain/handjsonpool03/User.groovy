package handjsonpool03

class User {

    String loginName
    String password
    String phone
    String role='user'
    Date dateCreated
    Date lastUpdated


    static  constraints = {

        loginName(blank:false,nullable:false,unique:true)
        password(blank:false,password:true)
        phone(minSize: 11,maxSize: 11)
        role(inList: ["admin","user"])
        dateCreated()
        lastUpdated()
    }

    static hasMany = [projects:Project]

    def beforeInsert={
        password=password.encodeAsSHA()
    }

    String toString()
    {
        return "${loginName}"
    }

    static transients=['admin']
    boolean isAdmin(){
        return role=="admin"
    }


}
