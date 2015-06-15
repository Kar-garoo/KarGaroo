package kargaroo


class Car {
    String plate
    String model
    Integer capacity
    User owner

    static hasMany =[routes:Route]
    static belongsTo = User

    static constraints = {
        plate(maxSize:6, minSize: 6, nullable: false)
        model (size: 3..50,nullable: false)
        capacity(min:1, max:4,nullable: false)
    }

}
