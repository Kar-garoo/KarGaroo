package kargaroo


class Car {
    String plate
    String model
    Integer capacity
    User owner

    static belongsTo = [user:User]

    static constraints = {
        plate(maxSize:6, minSize: 6, nullable: true,matches: /([a-z]|[A-Z]){3}[0-9]{3}/)
        model (size: 3..50,nullable: true)
        capacity(min:1, max:4,nullable: true)
    }

}
