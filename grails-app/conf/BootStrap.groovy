import kargaroo.forum.Section
import kargaroo.forum.Topic
import kargaroo.User
class BootStrap {


    def init = { servletContext ->


        def parameters = [userName     : 'MasChevere'
                          ,password     : 'secret'
                          , confirm    : 'secret'
                          , firstName  : 'roberto'
                          , lastName   : 'gomez'
                          , age        : 50
                          , DNI        : null
                          , phone      : null
                          , mail       : 'juca-666@hotmail.com'
                          , description: null
                          , avatar : null
                          , avatarType : null]

        def parameters2 = [userName     : 'Sergiochevere'
                          ,password     : 'secret'
                          , confirm    : 'secret'
                          , firstName  : 'Sergio'
                          , lastName   : 'Diaz Pinilla'
                          , age        : 21
                          , DNI        : 1032458183
                          , phone      : 4287103
                          , mail       : 'sergiochevere@hotmail.com'
                          , description: "Sergio chevere"
                          , avatar : null
                          , avatarType : null]

        def user = new User(parameters).save()
        def user2 = new User(parameters2).save()




        if ( Section.count() == 0 ) { // create data if no forum data found
            new kargaroo.Group(name: "UNAL",description: 'Grupo de la unal',opener:user).save().addToMembers(user)

            def section = new Section(title: "Seccion Principal").save()


            new Topic(section: section, title: "Conductores", description: "¿Tienes duda sobre algun conductor?").save()
            new Topic(section: section, title: "Transporte", description: "Hablanos sobre algun vehiculo").save()
            new Topic(section: section, title: "Pasajeros", description: "¿Quieres saber sobre algun pasajero?").save()
            new Topic(section: section, title: "Denuncias", description: "¿Que problemas has tenido con el servicio?").save()
            new Topic(section: section, title: "Recomendaciones", description: "¿Como podemos mejorar?").save()
            new Topic(section: section, title: "Servicios", description: "¿Te gustaria un servicio especial?").save()
        }


    }

    def destroy = {
    }
}
