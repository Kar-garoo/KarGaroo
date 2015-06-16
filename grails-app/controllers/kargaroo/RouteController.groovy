package kargaroo

import kargaroo.request.RouteRequest

class RouteController {
    def user

    def index() {
        if(!session.userSession){
            redirect(controller: 'user',action: 'index')
        }else{
            redirect(action: 'maps')
        }

    }

    def maps(){
        if(!session.userSession){
            redirect(controller: 'user',action: 'index')
        }else {
            user = User.findByUserName(session.userSession)
            [mapVar: Route.list(), cars: Car.list(), userCar: user.car]
        }
    }

    def createRoute(){
        if(!session.userSession){
            redirect(controller: 'user',action: 'index')
            return
        }else {
            user = User.findByUserName(session.userSession)
            def parameters = [origin     : params.origin,
                              end        : params.end,
                              meanTime   : params.meanTime,
                              sits       : params.sits,
                              description: params.description,
                              endDate    : params.endDate,
                              car        : user.car
            ]

            def newRoute = new Route(parameters)

            if (!newRoute.save()) {
                flash.message = "ERROR"
                render(view: 'maps',model: [newRoute:newRoute,mapVar: Route.list(), cars: Car.list(), userCar: user.car])
                return
            }
            redirect(action: 'maps')
        }
    }

    def leaveRoute(String userName,long routeId){
        def updatedRoute = Route.findById(routeId)
        updatedRoute.users.remove(User.findByUserName(userName))
        updatedRoute.save(flush: true)
        redirect(controller: 'route',action:'maps', params:[routeId: routeId])
    }
    def deleteRoute(long routeId){
        def deleteRoute = Route.findById(routeId)
        deleteRoute.delete(flush: true)
        redirect(controller: 'route',action:'maps', params:[routeId: routeId])
    }

    def addToRoute(long routeId,String senderName){
        def sender = User.findByUserName(senderName)
        def updatedRoute = Route.findById(routeId)
        updatedRoute.addToUsers(sender)
        updatedRoute.sits = updatedRoute.sits - 1
        updatedRoute.save(flush: true)
        def receiver=  User.findByUserName(session["userSession"])
        RouteRequest.findBySenderAndReceiverAndRequestedRoute(sender, receiver, updatedRoute).delete(flush: true)
        redirect(controller: 'user', action:'notifications',params:[routeId:routeId])
    }

    def declineToRoute(long routeId,String senderName){
        def sender = User.findByUserName(senderName)
        def route = Route.findById(routeId)
        def receiver=  User.findByUserName(session["userSession"])
        RouteRequest.findBySenderAndReceiverAndRequestedGroup(sender, receiver, route).delete(flush: true)
        redirect(controller: 'user', action:'notifications',params:[routeId:routeId])
    }

    def buscador(){
        render(view: 'buscador',model:[rutas:[]] )
    }

    def findRoute(){
        def routes = []
        if(Route.findByOrigin(params.origin)){
            routes.add(Route.findByOrigin(params.origin))
        }
        if(Route.findByOrigin(params.end)){
            routes.add(Route.findByOrigin(params.end))
        }
        if(Route.findByEnd(params.origin)){
            routes.add(Route.findByEnd(params.origin))
        }
        if(Route.findByEnd(params.end)){
            routes.add(Route.findByEnd(params.end))
        }
        render(view: 'buscador',model: [rutas:routes])
    }

}
