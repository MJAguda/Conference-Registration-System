<%@ page contentType="text/html; ISO-8859-1" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Registration</title>
        <style>
            .error {
                color: #ff0000;
            }

            .erroblock {
                color: #000;
                background-color: #ffEEEE;
                border: 3px solid #ff0000;
                padding: 8px;
                margin: 16px;
            }
        </style>
    </head>
    <body>
        <h1>Registration</h1>
        <form:form modelAttribute="registration">
            <form:errors path="*" cssClass="erroblock" element="div" />
            <table>
                <tr>
                    <td>
                        <!-- Internationalize Name -->
                        <spring:message code="name"/>
                    </td>
                    <td>
                        <form:input path="name" />
                    </td>
                    <td
                        <form:errors path="name" cssClass="error" />
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