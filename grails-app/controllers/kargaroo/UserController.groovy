package kargaroo

import org.springframework.transaction.annotation.Transactional


class UserController {

    def user
    def user1

    def index(){
        redirect(controller: 'mainPage',action: 'index')
    }

    @Transactional
    def register(){

        user = User.findByMail(params.mail)
        user1 = User.findByUserName(params.userName)
        /*
        if(user){ //El usuario ya existe
            flash.message = "User already exists with the email '${params.mail}'"
            //Arreglar este render
            redirect(controller:'user',action:'logUp')
        }
        else if(user1){ //El usuario ya existe
            flash.message = "User already exists with the username '${params.userName}'"
            //Arreglar este render
            redirect(controller:'user',action:'logUp')
        }
        else {//Nuevo Usario*/

            def parameters = [userName     : params.userName,
                              password     : params.password
                              , confirm    : params.confirm
                              , firstName  : params.firstName
                              , lastName   : params.lastName
                              , age        : params.age
                              , DNI        : null
                              , phone      : null
                              , mail       : params.mail
                              , description: null]



            def newUser = new User(parameters)

            newUser.save(flush: true)


            user = User.findByMail(params.mail)

            session["userSession"] = user.userName

            redirect(controller: 'user', action: 'profile')
       // }
    }

    def logIn(){
        user = User.findByUserName(params.userName)
        session["userSession"] = user.userName
        redirect(controller: 'user', action: 'profile')

    }

    def logUp(){

    }

    def profile(){
        render(view: 'profile',model:[user:User.findByUserName(session.userSession)])
    }

}
