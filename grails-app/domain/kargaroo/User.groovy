package kargaroo

import sun.security.util.Password

class User {
    String userName
    String password
    String confirm
    String firstName
    String lastName
    Integer age
    Integer DNI
    Integer phone
    String mail
    String description

    //byte[] avatar
    //String avatarType

    //static  hasOne = [addres : Address]


    static constraints = {
        userName(blank: false,unique: true,minSize: 5,maxSize: 20)
        password(blank:false, minSize: 5)
        confirm(blank:false, minSize: 5)
        firstName(blank: false)
        lastName(blank: false)
        age(nullable: false,min:18)
        DNI(nullable: true,unique: true)
        phone(nullable: true)
        mail(email: true)
        description(nullable: true)
        //avatar(nullable:true, maxSize: 16384 /* 16K */)
        //avatarType(nullable:true)
    }

}
