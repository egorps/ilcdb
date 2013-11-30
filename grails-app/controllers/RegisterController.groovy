import org.junit.After;

import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.ui.RegistrationCode

public class RegisterController extends grails.plugin.springsecurity.ui.RegisterController
{
    def resetPassword() {
        def command = new ResetPasswordCommand(params)

        String token = params.t
        
        def registrationCode = token ? RegistrationCode.findByToken(token) : null
        if (!registrationCode)
        {
            flash.error = message(code: 'spring.security.ui.resetPassword.badCode')
            redirect uri: SpringSecurityUtils.securityConfig.successHandler.defaultTargetUrl
            return
        }
        
        if (!request.post)
            return [token: token, command: new ResetPasswordCommand()]
        
        command.username = registrationCode.username
        command.validate()
        
        if (command.hasErrors())
            return [token: token, command: command]
        
        RegistrationCode.withTransaction { status ->
            def user = lookupUserClass().findByUsername(registrationCode.username)
            user.password = command.password
            user.save()
            registrationCode.delete()
        }
        
        springSecurityService.reauthenticate registrationCode.username
        
        flash.message = message(code: 'spring.security.ui.resetPassword.success')
        
        def conf = SpringSecurityUtils.securityConfig
        String postResetUrl = conf.ui.register.postResetUrl ?: conf.successHandler.defaultTargetUrl
        redirect uri: postResetUrl
    }
}

class ResetPasswordCommand
{
    String username
    String password
    String password2
    
    static constraints =
    {
        password blank: false, minSize: 8, maxSize: 64, validator: RegisterController.passwordValidator
        password2 validator: RegisterController.password2Validator
    }
}
