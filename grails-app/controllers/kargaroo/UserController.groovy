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
                flash.message = "Avatar must be one of: ${okcontents}"
                render(view:'logUp', model:[user:user])
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
            if(!newUser.save(flush: true)){
                render(view: 'logUp',model: [newUser:newUser])
                return
            }
            user = User.findByMail(params.mail)
            session["userSession"]=user.userName
            redirect(controller: 'user', action: 'profile')
        }
    }

    def logIn(){
    }

    def logInLogic(){
        user = User.findByUserName(params.userName)
        session["userSession"] = user.userName
        redirect(controller: 'user', action: 'profile')
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

    def updateUser(){

        def avatarFile = request.getFile('avatar')
        if (!okcontents.contains(avatarFile.getContentType()) && avatarFile.bytes != []) {
            flash.message = "Avatar must be one of: ${okcontents}"
            render(view:'profile', model:[user:User.findByUserName(session.userSession)])
            return
        }

        def userUpdate = User.findByUserName(session.userSession)
        userUpdate.DNI = Integer.parseInt(params.DNI)
        userUpdate.phone = Integer.parseInt(params.phone)
        userUpdate.description = params.description
        userUpdate.avatar = avatarFile.bytes
        userUpdate.avatarType = avatarFile.contentType

        if(!userUpdate.save(flush: true)){
            render(view: 'update',model: [newUser:userUpdate])
            return
        }
        redirect(controller: 'user', action: 'profile')

    }

    def avatar_image() {
        def avatarUser = User.findByUserName(session.userSession)
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

}
