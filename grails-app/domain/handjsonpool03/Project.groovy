package handjsonpool03

class Project {

    static constraints = {
        projectName(blank:false)
        description()
        dateCreated()
        lastUpdated()

    }
        String projectName
        String description
        User user
        Date dateCreated
        Date lastUpdated

    static belongsTo = [user:User]//双向多对一的约束
    static hasMany = [jsons:Json]//双向一对多的约束
    String toString()
    {
        return "${projectName}"
    }
}
