<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.list.label" args="[entityName]" default="Users" /></title>
    </head>
    <body>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" default="Users" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                            <g:sortableColumn property="id" title="${message(code: 'user.id.label', default: 'Id')}" />
                            <g:sortableColumn property="username" title="${message(code: 'user.username.label', default: 'Username')}" />
                            <g:sortableColumn property="passwordExpired" title="${message(code: 'user.passwordExpired.label', default: 'Password Expired')}" />
                            <g:sortableColumn property="email" title="${message(code: 'user.email.label', default: 'Email')}" />
                            <g:sortableColumn property="accountExpired" title="${message(code: 'user.accountExpired.label', default: 'Account Expired')}" />
                            <g:sortableColumn property="accountLocked" title="${message(code: 'user.accountLocked.label', default: 'Account Locked')}" />
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${userInstanceList}" status="i" var="userInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                            <td><g:link action="edit" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "id")}</g:link></td>
                            <td>${fieldValue(bean: userInstance, field: "username")}</td>
                            <td><g:formatBoolean boolean="${userInstance.passwordExpired}" /></td>
                            <td>${fieldValue(bean: userInstance, field: "email")}</td>
                            <td><g:formatBoolean boolean="${userInstance.accountExpired}" /></td>
                            <td><g:formatBoolean boolean="${userInstance.accountLocked}" /></td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${userInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
