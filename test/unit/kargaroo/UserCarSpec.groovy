package kargaroo

import grails.buildtestdata.mixin.Build
import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.support.GrailsUnitTestMixin} for usage instructions
 */
@TestFor(UserCar)
@Build(UserCar)
class UserCarSpec{

    void testInsertCar() {
        mockForConstraintsTests UserCar

        //test goodUser
        def userCarTest = UserCar.build()
        assert userCarTest.validate()
    }
}
