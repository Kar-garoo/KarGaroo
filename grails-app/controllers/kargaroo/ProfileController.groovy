package kargaroo

class ProfileController {

    def index() {
        User user = User.list().get(0)
        render(controller:'profile',view:'index')
        [user:user.userName]
    }


}
