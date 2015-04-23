package kargaroo

class UserCar extends User{

    //Car car
    Integer points


    static constraints = {
        //car(nullable:false)
        points(min: 0)
    }
}
