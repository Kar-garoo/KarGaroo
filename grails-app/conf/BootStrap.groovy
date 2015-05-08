import kargaroo.forum.Comment
import kargaroo.forum.DiscussionThread
import kargaroo.forum.Section
import kargaroo.forum.Topic
import kargaroo.User
class BootStrap {
    def random = new Random();
    def words = ("time,person,year,way,day,thing,man,world,life,hand,part,child,eye,woman,place,work,week,case,point," +
            "government,company,number,group,problem,fact,be,have,do,say,get,make,go,know,take,see,come,think,look," +
            "want,give,use,find,tell,ask,work,seem,feel,try,leave,call,good,new,first,last,long,great,little,own," +
            "other,old,right,big,high,different,small,large,next,early,young,important,few,public,bad,same,able,to,of," +
            "in,for,on,with,at,by,from,up,about,into,over,after,beneath,under,above,the,and,a,that,I,it,not,he,as,you," +
            "this,but,his,they,her,she,or,an,will,my,one,all,would,there,their").split(",")

    def init = { servletContext ->

        def parameters = [userName     : 'MasChevere'
                          ,password     : 'secret'
                          , confirm    : 'secret'
                          , firstName  : 'roberto'
                          , lastName   : 'gomez'
                          , age        : 123
                          , DNI        : null
                          , phone      : null
                          , mail       : 'juca-666@hotmail.com'
                          , description: null
                          , avatar : null
                          , avatarType : null]



        def user = new User(parameters)

        if(!user.validate()){
            user.errors.each{
                render("lol")
            }
        }

        user.save(flush: true)

        if ( Section.count() == 0 ) { // create data if no forum data found

            ('A'..'C').each { sectionLetter ->
                def sectionTitle = "Section ${sectionLetter}"
                def section = new Section(title: sectionTitle).save()
                // create 4 topics per section
                (1..4).each { topicNumber ->
                    def topicTitle = "Tema ${sectionLetter}-${topicNumber}"
                    def topicDescription = "descripcion de ${topicTitle}"
                    def topic = new Topic(section: section, title: topicTitle, description: topicDescription).save()
                    // create 10-20 threads each topic
                    def numberOfThreads = 5
                    (1..numberOfThreads).each { threadNo ->
                        def opener = user
                        def subject = "Subject ${sectionLetter}-${topicNumber}-${threadNo} "
                        def thread = new DiscussionThread(topic:topic, subject:subject, opener:opener).save()
                        new Comment(thread:thread, commentBy:opener, body:generateRandomComment()).save()
                        // create 10-35 replies per thread
                        def numberOfReplies = 6
                        numberOfReplies.times {
                            def commentBy = user
                            new Comment(thread:thread, commentBy:commentBy, body:generateRandomComment()).save()
                        }
                    }


                }
            }
        }


    }
    private String generateRandomComment() {
        def numberOfWords = random.nextInt(50) + 15
        StringBuilder sb = new StringBuilder()
        numberOfWords.times {
            def randomWord = words[random.nextInt(words.length)]
            sb.append("${randomWord} ")
        }
        return sb.toString()
    }
    def destroy = {
    }
}
