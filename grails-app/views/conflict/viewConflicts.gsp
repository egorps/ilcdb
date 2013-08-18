<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main" />
    <title>View Conflicts: ${client.encodeAsHTML()}</title>
</head>
<body>
<div class="body">
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <g:each in="${[[title:"High Probability,", "vals":high],
                   [title:"Medium Probability", "vals":medium],
                   [title:"Low Probability", "vals":low]]}"
        var="confList">
        <h1>${confList.title} Conflicts</h1>
        <div class="list">
            <table>
                <thead>
                    <tr>
                        <g:sortableColumn property="lastName" title="Last Name" />
                        <g:sortableColumn property="firstName" title="First Name" />
                        <th>Conflicting Client</th>
                        <th>&nbsp;</th>
                    </tr>
                </thead>
                <tbody>
                     <g:each in="${confList.vals}" status="i" var="conflict">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                            <td>${conflict.lastName}</td>
                            <td>${conflict.firstName}</td>
                            <td>${conflict.client.encodeAsHTML()}</td>
                            <td><g:link action="show" id="${conflict.id}">Show</g:link></td>
                        </tr>
                     </g:each>
                  </tbody>
            </table>
        </div>
    </g:each>
    <div class="buttons">
        <g:form>
            <input type="hidden" name="id" value="${conflict?.id}" />
            <span class="button"><g:actionSubmit class="edit" value="Accept Client" /></span>
            <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Reject Client" /></span>
        </g:form>
    </div>
</div>
</body>
</html>
