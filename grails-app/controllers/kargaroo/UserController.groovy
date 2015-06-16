package kargaroo

import kargaroo.request.GroupRequest

class UserController {

    def user
    def user1

    def index(){
        if(session.userSession){
            redirect(controller: 'user',action: 'profile' , params: [userName: "${session.userSession}"])
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
            redirect(controller: 'user', action: 'profile',params: [userName:"${user.userName}"])
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
                redirect(controller: 'user', action: 'profile', params: [userName:user.userName])
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

        def userName = params.userName
        if(session.userSession == userName){
            render(view: 'profile',model:[user:User.findByUserName(session.userSession)])
        }else{
            render(view: 'profile',model:[user:User.findByUserName(userName)])
        }

    }


    def update(){
        render(view: 'update',model:[user:User.findByUserName(session.userSession)])
    }

    def updateUser() {
        def userUpdate = User.findByUserName(session.userSession)
        def avatarFile = request.getFile('avatar')
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
            userUpdate.phone = new BigInteger(params.phone)
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
        render(view: 'profile',model:[user:User.findByUserName(session.userSession)])

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

    def addCar(){
        def userC = User.findByUserName(session.userSession)
        def parameters = [plate: params.plate,
                          model: params.model,
                          capacity: params.capacity,
                          owner: userC]

        def newCar = new Car(parameters)
        if(!newCar.save(flush: true)){
            print("ERROR CAR")
            render(view: 'profile',model:[user:User.findByUserName(session.userSession)])
            return
        }
        render(view: 'profile',model:[user:User.findByUserName(session.userSession)])
    }

    def notifications(){
        render(view: 'notifications')
    }

    def groups(){
        [groups:Group.list()]
    }
    def members(){
        [groupId:params.groupId]
    }
    def newGroup(String name, String description) {
        if (name != null && name.trim().length() > 0) {
            User opener = User.findByUserName(session["userSession"])

            new Group(name: name, description: description, opener:opener).addToMembers(opener).save(flush:true)
        }
        redirect(action:'groups')
    }
    def leaveGroup(String userName,long groupId){
        Group updatedGroup=Group.findById(groupId)
        def deleteUser = User.findByUserName(userName).groups.remove(updatedGroup)
        updatedGroup.members.remove(deleteUser)
        updatedGroup.save(flush: true)

        redirect(action:'members', params:[groupId: groupId])
    }
    def deleteGroup(long groupId){
        def deleteGroup=Group.findById(groupId)
        deleteGroup.delete()

        redirect(action:'groups')
    }
    def addToGroup(long groupId,String senderName){
        def sender=User.findByUserName(senderName)
        def updatedGroup=Group.findById(groupId)
        updatedGroup.addToMembers(sender)
        updatedGroup.save(flush: true)
        def receiver=  User.findByUserName(session["userSession"])
        GroupRequest.findBySenderAndReceiverAndRequestedGroup(sender, receiver, updatedGroup).delete(flush: true)
        redirect(action:'notifications')
    }
    def declineToGroup(long groupId,String senderName){
        def sender = User.findByUserName(senderName)
        def group =Group.findById(groupId)
        def receiver=  User.findByUserName(session["userSession"])
        GroupRequest.findBySenderAndReceiverAndRequestedGroup(sender, receiver, group).delete(flush: true)
        redirect(action:'notifications')
    }

}
