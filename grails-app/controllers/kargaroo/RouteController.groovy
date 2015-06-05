package kargaroo

class RouteController {


    def index() {
        print(Route.list())
        render (view: 'maps',model: [mapVar:Route.list()[0]])
    }

}
