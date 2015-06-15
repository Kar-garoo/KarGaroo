package kargaroo

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

}
