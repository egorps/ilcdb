

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Show Appointment</title>
    </head>
    <body>
        <div class="body">
            <h1>Show Appointment</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Client:</td>
                            
                            <td valign="top" class="value"><g:link controller="client" action="show" id="${appointment?.client?.id}">${appointment?.client?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Date:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:appointment, field:'date')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Note:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:appointment, field:'note')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${appointment?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
