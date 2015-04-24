package kargaroo

import grails.buildtestdata.mixin.Build
import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.support.GrailsUnitTestMixin} for usage instructions
 */
@TestFor(User)
@Build(User)
class UserSpec{


    void testUserInsert() {
        mockForConstraintsTests User

        //test goodUser
        def userTest = User.build()
        assert userTest.validate()

    }
}
