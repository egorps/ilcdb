<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.edit.label" args="[entityName]" default="Edit User"/></title>
    </head>
    <body>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" default="Edit User" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${userInstance}">
            <div class="errors">
                <g:renderErrors bean="${userInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${userInstance?.id}" />
                <g:hiddenField name="version" value="${userInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="username"><g:message code="user.username.label" default="Username" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'username', 'errors')}">
                                    <g:textField name="username" value="${userInstance?.username}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="password"><g:message code="user.password.label" default="Password" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'password', 'errors')}">
                                    <g:textField name="password" value="" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="accountExpired"><g:message code="user.accountExpired.label" default="Account Expired" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'accountExpired', 'errors')}">
                                    <g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="accountLocked"><g:message code="user.accountLocked.label" default="Account Locked" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'accountLocked', 'errors')}">
                                    <g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="email"><g:message code="user.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'email', 'errors')}">
                                    <g:textField name="email" value="${userInstance?.email}" size="40" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="enabled"><g:message code="user.enabled.label" default="Enabled" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'enabled', 'errors')}">
                                    <g:checkBox name="enabled" value="${userInstance?.enabled}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="passwordExpired"><g:message code="user.passwordExpired.label" default="Password Expired" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'passwordExpired', 'errors')}">
                                    <g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="role"><g:message code="user.role.label" default="Role" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: userInstance, field: 'role', 'errors')}">
                                    <g:each in="${Role.RoleType.values()}" var="aRole">
                                        <g:radio name="role" value="${aRole}" checked="${aRole.displayName.equals(userInstance.roleDisplayName) ? 'true' : ''}"/>${aRole.displayName}<br>
                                    </g:each>
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
