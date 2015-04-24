package kargaroo

import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.support.GrailsUnitTestMixin} for usage instructions
 */
@TestFor(User)
class UserSpec{


    void testUserInsert() {
        mockForConstraintsTests User

        //test goodUser
        def userTest = User.build()
        assert userTest.validate()

    }
}
