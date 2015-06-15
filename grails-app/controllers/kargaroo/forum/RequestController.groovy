package kargaroo.forum

import kargaroo.Group
import kargaroo.User
import kargaroo.request.GroupRequest

class RequestController {

    def index() {}
    def requestGroup(long groupId){
        def group=Group.findById(groupId)
        def sender = User.findByUserName(session["userSession"])
        def receiver = group.opener
        new GroupRequest(sender: sender, receiver: receiver, requestedGroup: group, content: "ingreso al grupo").save(flush: true)
        redirect(controller: 'user', action:'members', params:[groupId: groupId])
    }
}
