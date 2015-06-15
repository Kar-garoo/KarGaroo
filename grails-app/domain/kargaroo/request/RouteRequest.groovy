package kargaroo.request

import kargaroo.Route

class RouteRequest extends Request{

    Route requestedRoute
    static belongsTo = Route
}
