package kargaroo

class Route {

    String origin
    String end
    String description
    Integer sits
    int meanTime
    Date endDate
    Car car

    static belongsTo = Car
    static hasMany = [users:User]

    static constraints = {
        origin(nullable: false)
        end(nullable: false)
        description(nullable: true)
        sits(nullable: false)
        endDate(nullable: false)
        meanTime(nullable: false)
    }
}

