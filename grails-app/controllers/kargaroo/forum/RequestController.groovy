package kargaroo.forum

import kargaroo.Group
import kargaroo.Route
import kargaroo.User
import kargaroo.request.GroupRequest
import kargaroo.request.RouteRequest

class RequestController {

    def index() {}

    def requestGroup(long groupId){
        def group = Group.findById(groupId)
        def sender = User.findByUserName(session["userSession"])
        def receiver = group.opener
        new GroupRequest(sender: sender, receiver: receiver, requestedGroup: group, content: "ingreso al grupo").save(flush: true)
        redirect(controller: 'user', action:'members', params:[groupId: groupId])
    }

    def requestRoute(long routeId){
        def route = Route.findById(routeId)
        def sender = User.findByUserName(session["userSession"])
        def receiver = User.findByUserName(params.userRequest)
        new RouteRequest(sender: sender, receiver: receiver, requestedRoute: route, content: "ingreso a la ruta").save(flush: true)
        print(RouteRequest.list().size())
        redirect(controller: 'user', action: 'notifications',params:[routeId:routeId])
    }
}
