package kargaroo

class ProfileController {

    def index() {
        render(controller:'profile',view:'index', model:[user:User.findByUserName(session.userSession)])
    }


}
