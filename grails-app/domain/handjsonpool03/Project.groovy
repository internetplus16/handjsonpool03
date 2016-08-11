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

    static belongsTo = [user:User]//˫����һ��Լ��
    static hasMany = [jsons:Json]//˫��һ�Զ��Լ��
    String toString()
    {
        return "${projectName}"
    }
}
