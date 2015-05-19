package kargaroo.forum
import kargaroo.User

class Comment {

    static belongsTo = DiscussionThread

    DiscussionThread thread
    User commentBy
    String body
    Date createDate = new Date()

    static constraints = {
        body( maxSize: 8000)
    }
}
