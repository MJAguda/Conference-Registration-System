<%@ page contentType="text/html; ISO-8859-1" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Registration</title>
    </head>
    <body>
        <h1>Registration</h1>
        <form:form modelAttribute="registration">
            <table>
                <tr>
                    <td>
                        <!-- Internationalize Name -->
                        <spring:message code="name"/>
                    </td>
                    <td>
                        <form:input path="name" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <!-- Internationalize Button -->
                        <spring:message code="save.changes" var="saveChangesMsg" />
                        <input type="submit" value="${saveChangesMsg}" />
                    </td>
                </tr>
            </table>
        </form:form>
    </body>
</html>