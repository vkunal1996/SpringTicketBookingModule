<%-- 
    Document   : reservationdetails
    Created on : Jan 7, 2018, 11:57:45 PM
    Author     : vkunal1996
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
                <th>ID</th>
                <th>Source</th>
                <td>Destination</td>
                <td>Train Id</td>
                <td>Train Name</td>
                <td>Ticket</td>
                <td>Arrival Time</td>
                <td>Departure time</td>
                <td>Price</td>
            </tr>
            <c:forEach items="${myVar}" var="st">
            <tr>
                   <td><c:out value="${st.id}"></c:out></td>
                   <td><c:out value="${st.source}"></c:out></td>
                   <td><c:out value="${st.destination}"></c:out></td>
                   <td><c:out value="${st.trainId}"></c:out></td>
                   <td><c:out value="${st.trainName}"></c:out></td>
                   <td><c:out value="${st.ticketType}"></c:out></td>
                   <td><c:out value="${st.arrTime}"></c:out></td>
                   <td><c:out value="${st.deptTime}"></c:out></td>
                   <td><c:out value="${st.price}"></c:out></td>
            </tr>
        </c:forEach>
        </table>
    </body>
</html>
