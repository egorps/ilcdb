<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit Service Record</title>
   </head>
    <body>
        <div class="body" style="width: 80%">
            <h1>Edit Service Record</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${serviceRecord}">
            <div class="errors">
                <g:renderErrors bean="${serviceRecord}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${serviceRecord?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="client">Client:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:serviceRecord,field:'client','errors')}">
                                    <g:select optionKey="id" from="${Client.list()}" name="client.id" value="${serviceRecord?.client?.id}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="createDate">Service Record Date:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:serviceRecord,field:'serviceDate','errors')}">
                                    <g:datePicker name="serviceDate" precision="day" value="${serviceRecord?.serviceDate}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="text">Hours:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:serviceRecord,field:'serviceHours','errors')}">
                                   <input type="text" id="serviceHours" name="serviceHours" value="${serviceRecord?.serviceHours}" />
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" value="Update" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
