package kargaroo.request

import kargaroo.User

class Request {
    User sender
    User receiver
    String content
    static belongsTo = User

    static constraints = {
        content(nullable: true)

    }

}
