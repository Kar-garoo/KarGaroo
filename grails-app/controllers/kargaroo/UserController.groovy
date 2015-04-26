package kargaroo

class UserController {

    def register(){

        def user = User.findByMail(params.mail)

        def parameters = [userName : params.userName ,
                          password : params.password
                          ,confirm: params.confirm
                          ,firstName: params.firstName
                          ,lastName: params.lastName
                          , age: params.age
                          ,DNI: null
                          ,phone: null
                          ,mail: params.mail]

        def newUser = new User(parameters)
        newUser.save()

        session["userSession"]=user.userName

        redirect(controller:'profile', action:'index', params: [user:newUser])

    }

}
