package kargaroo

import org.springframework.transaction.annotation.Transactional
import org.springframework.web.multipart.commons.CommonsMultipartFile

import javax.servlet.http.HttpServletRequest


class UserController {

    def user
    def user1

    def index(){
        if(session.userSession){
            redirect(controller: 'user',action: 'profile')
        }
    }

    private static final okcontents = ['image/png', 'image/jpeg', 'image/gif']
    def register(){

        user = User.findByMail(params.mail)
        user1 = User.findByUserName(params.userName)

        if(user){
            //El usuario ya existe
            flash.message = "userExist'"
            redirect(controller:'user',action:'logUp')
        }
        else if(user1){
            //El usuario ya existe
            flash.message = "mailExist"
            redirect(controller:'user',action:'logUp')
        }
        else {
            //Nuevo Usario*/
            def avatarFile = request.getFile('avatar')
            if (!okcontents.contains(avatarFile.getContentType()) && avatarFile.bytes != []) {
                flash.message = "Avatar"
                render(view:'logUp', model:[user:user,formats:okcontents])
                return
            }
            def parameters = [userName     : params.userName
                              ,password     : params.password
                              , confirm    : params.confirm
                              , firstName  : params.firstName
                              , lastName   : params.lastName
                              , age        : params.age
                              , DNI        : params.DNI
                              , phone      : params.phone
                              , mail       : params.mail
                              , description: null
                              , avatar : avatarFile.bytes
                              , avatarType : avatarFile.contentType]



            def newUser = new User(parameters)
            if(parameters.password != parameters.confirm){
                flash.message = "Password"
                render(view:'logUp', model:[user:user])
                return
            }
            if(!newUser.save(flush: true)){
                render(view: 'logUp',model: [newUser:newUser])
                return
            }

            user = User.findByMail(params.mail)
            session["userSession"]=user.userName
            redirect(controller: 'user', action: 'profile')
            return
        }
    }

    def logIn(){
    }

    def logInLogic(){
        user = User.findByUserName(params.userName)
        if(!user){
            flash.message = "No existe user"
            redirect(controller: 'user', action: 'logIn')
        }else{
            if(User.findByPassword(params.password)){
                session["userSession"] = user.userName
                redirect(controller: 'user', action: 'profile')
            }else{
                flash.message = "Password incorrecto"
                redirect(controller: 'user', action: 'logIn')
            }

        }

    }

    def logUp(){
    }

    def logOut(){
        session["userSession"] = null
        redirect(controller: 'user',action: 'index')
    }

    def profile(){
        render(view: 'profile',model:[user:User.findByUserName(session.userSession)])
    }

    def update(){
        render(view: 'update',model:[user:User.findByUserName(session.userSession)])
    }

    def updateUser() {
        def userUpdate = User.findByUserName(session.userSession)
        def avatarFile = request.getFile('avatar')
        print(avatarFile)
        if (avatarFile) {
            if (avatarFile.bytes == []) {
                userUpdate.avatar = userUpdate.avatar
                userUpdate.avatarType = userUpdate.avatarType
            } else {
                if (!okcontents.contains(avatarFile.getContentType()) && avatarFile.bytes != []) {
                    flash.message = "Avatar"
                    render(view: 'update', model: [user: User.findByUserName(session.userSession)])
                    return
                }
            }
        }


        if (params.DNI) {
            userUpdate.DNI = Integer.parseInt(params.DNI)
        }
        if (params.phone) {
            userUpdate.phone = Integer.parseInt(params.phone)
        }
        if (params.description) {
            userUpdate.description = params.description
        }
        if (avatarFile) {
            if (avatarFile.bytes != []) {

                userUpdate.avatar = avatarFile.bytes
                userUpdate.avatarType = avatarFile.contentType
            }
        }




        if(!userUpdate.save(flush: true)){
            render(view: 'update',model: [newUser:userUpdate])
            return
        }
        redirect(controller: 'user', action: 'profile')

    }

    def avatar_image() {
        def avatarUser = User.findByUserName(params.user)
        if (!avatarUser || !avatarUser.avatar || !avatarUser.avatarType) {
            response.sendError(404)
            return
        }
        response.contentType = avatarUser.avatarType
        response.contentLength = avatarUser.avatar.size()
        OutputStream out = response.outputStream
        out.write(avatarUser.avatar)
        out.close()
    }

    def notifications(){
        render(view: 'notifications',model:[groups:Group.list()])
    }

}
