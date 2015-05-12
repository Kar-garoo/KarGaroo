package kargaroo.forum
import  kargaroo.User



class ForumController {


    def index() {
        [sections:Section.listOrderByTitle()]
    }

    def topic(long topicId) {
        Topic topic = Topic.get(topicId)

        params.max = 10
        params.sort = 'createDate'
        params.order = 'desc'

        [threads:DiscussionThread.findAllByTopic(topic, params),
         numberOfThreads:DiscussionThread.countByTopic(topic), topic:topic]
    }

    def thread(long threadId) {
        DiscussionThread thread = DiscussionThread.get(threadId)

        params.max = 10
        params.sort = 'createDate'
        params.order = 'asc'

        [comments:Comment.findAllByThread(thread, params),
         numberOfComments:Comment.countByThread(thread), thread:thread]
    }


    def postReply(long threadId, String body) {
        def offset = params.offset
        if (body != null && body.trim().length() > 0) {
            DiscussionThread thread = DiscussionThread.get(threadId)
            def commentBy = User.findByUserName(session["userSession"])
            new Comment(thread:thread, commentBy:commentBy, body:body).save()

            // go to last page so user can view his comment
            def numberOfComments = Comment.countByThread(thread)
            def lastPageCount = numberOfComments % 10 == 0 ? 10 : numberOfComments % 10
            offset = numberOfComments - lastPageCount
        }
        redirect(action:'thread', params:[threadId:threadId, offset:offset])
    }
    def newPost(long topicId, String subject) {
        def offset = params.offset
        if (subject != null && subject.trim().length() > 0) {
            Topic topic = Topic.get(topicId)
            def opener = User.findByUserName(session["userSession"])
            new DiscussionThread(topic:topic, subject:subject, opener:opener).save()

            // go to  page so user can view his Thread
            def numberOfPosts = DiscussionThread.countByTopic(topic)
            offset = 0
        }
        redirect(action:'topic', params:[topicId:topicId, offset:offset])
    }

    def avatar_image(user) {
        print(user)
        def avatarUser = User.findByUserName(user)
        if (!avatarUser || !avatarUser.avatar || !avatarUser.avatarType) {
            response.sendError(404)
            return
        }
        response.contentType = avatarUser.avatarType
        response.contentLength = avatarUser.avatar.size()
        OutputStream out = response.outputStream
        out.write(avatarUser.avatar)
        out.close()
    }
}