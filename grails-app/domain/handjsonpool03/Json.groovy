package handjsonpool03

class Json {

    String placeholderUrl
    String method
    String jsonData
    Project project
    Date dateCreated
    Date lastUpdated
    static constraints = {
        placeholderUrl()
        method(inList:["delete","post","put","get"])
        jsonData(blank:false)
        dateCreated()
        lastUpdated()

    }
    static belongsTo=[project:Project]

}
