package kargaroo.request

import kargaroo.Group

/**
 * Created by JK on 11/06/2015.
 */
class GroupRequest extends Request {
    Group requestedGroup

    static belongsTo = Group
}
