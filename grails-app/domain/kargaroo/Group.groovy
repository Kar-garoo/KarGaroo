package kargaroo

class Group {

    String name
    String description
    User opener

    static hasMany = [members : User]
    static belongsTo = User

    static constraints = {
        description(nullable: true)
    }

    static mapping = {
        table "group_"
    }
}
