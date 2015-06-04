package kargaroo

class Group {

    String name
    String description


    static hasOne = [admin: User]
    static belongsTo = User
    static hasMany = [usuarios:User]

    static constraints = {
        name(unique: true)
        usuarios(nullable: true)
    }
}
