package kargaroo

class ChatController {
    static count = 0
    def index() {
        redirect(controller: 'chat', action: 'addReceiver')
    }

    /*guarda el nuevo mensaje en la conversacion actual*/
    def addMessage(){

            def newMessage = new Message()
            newMessage.transmitter = session.Transmitter
            print newMessage.transmitter
            newMessage.receiver = session.Receiver
            print newMessage.receiver
            newMessage.content = params.Message
            print newMessage.content
            newMessage.date = new Date()
            newMessage.save()
            goToChatRoom()

    }

    /* agrega el emisor y el receptor de la conversacion actual */
    def addReceiver(){
        // Estos usuarios son a manera de ejemplo, para hacer las pruebas pertinentes del chat
        if(count == 0){
            session["Transmitter"] = "migue"
            session["Receiver"] = "marce"
            count = count + 1
        }else{
            session["Transmitter"] = "marce"
            session["Receiver"] = "migue"
        }

        goToChatRoom()
        //session["Transmitter"] = session.userName
        //session["Receiver"] = params.receiver
    }
    /*muestra la vista del chat con el historial de conversacion actual*/
    def goToChatRoom(){
        def listMessagesT =  Message.findAllByTransmitterAndReceiver(session.Transmitter, session.Receiver)
        def listMessagesR =  Message.findAllByTransmitterAndReceiver(session.Receiver, session.Transmitter )
        def listMessages = listMessagesT + listMessagesR

        Message.count()
        listMessages.sort{it.date}
        render(view: 'chatRoom', model:[listMessages : listMessages])
    }

}
