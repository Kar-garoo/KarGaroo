package kargaroo


class Car {
    String plate
    String model
    Integer capacity
    UserCar userCar
    static belongsTo = [UserCar]

    static constraints = {
        plate(maxSize:6, minSize: 6 )
        model (size: 3..50)
        capacity(min:1, max:4)
    }

}
