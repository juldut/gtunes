package com.gtunes



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(UserController)
class UserControllerTests {

    void testPasswordsDoNotMatch() {
        request.method = "POST"
        
        params.login = "henry"
        params.password = "password"
        params.confirm = "wrongPass"
        params.firstName = "Henry"
        params.lastName = "Rollins"
        
        def model = controller.register()
        def user = model.user
        
        assert user.hasErrors()
        assert 'user.password.dontmatch' == user.errors["password"].code
        
    }
    
    void testRegistrationFailed() {
        request.method = 'POST'
        params.login = ''
        def model = controller.register()
        def user = model.user
        assert user.hasErrors()
        assert session.user == null
        assert 'blank' == user.errors['login'].code
        assert 'nullable' == user.errors['firstName'].code
        assert 'nullable' == user.errors['lastName'].code
    }
    
    void testRegistrationSuccess() {
        request.method = 'POST'
        params.login = 'henry'
        params.password = 'password'
        params.confirm = 'password'
        params.firstName = 'Henry'
        params.lastName = 'Rollins'
        controller.register()
        assert '/store' == response.redirectedUrl
        assert session.user != null
    }
}
