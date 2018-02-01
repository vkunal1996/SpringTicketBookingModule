<%-- 
    Document   : reservationpage
    Created on : Jan 7, 2018, 11:57:29 PM
    Author     : vkunal1996
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form:form commandName="reservationDetails" method="post">
            <table>
                <tr>
                    <td><form:label path="source">Source</form:label></td>
                    <td>
                        <!--<select id="fromChoose" name="fromChoose">
                            <option value="JALANDHAR" id="JALANDHAR">JALANDHAR</option>
                            <option value="AMBALA" id="AMBALA">AMBALA</option>
                            <option value="LUDHIANA" id="LUDHIANA">LUDHIANA</option>
                            <option value="PATIALA" id="PATIALA">PATIALA</option>
                            <option value="PHAGWARA" id="PHAGWARA">PHAGWARA</option>
                            <option value="CHANDIGARH" id="CHANDIGARH">CHANDIGARH</option>

                        </select> -->
                        
                        <form:select path = "source">
                             <form:option value = "NONE" label = "Select"/>
                             <form:option value="JALANDHAR" label="JALANDHAR"/>
                             <form:option value="AMBALA" label="AMBALA"/>
                             <form:option value="LUDHIANA" label="LUDHIANA"/>
                             <form:option value="PATIALA" label="PATIALA"/>
                             <form:option value="PHAGWARA" label="PHAGWARA"/>
                             <form:option value="CHANDIGARH" label="CHANDIGARH"/>
                         </form:select>   
                    </td>
                </tr>
                <tr>
                    <td><form:label path="destination">Destination</form:label></td>
                    <td>
                       <!-- <select id="toChoose" name="destination">
                            <option value="JALANDHAR" id="JALANDHAR">JALANDHAR</option>
                            <option value="AMBALA" id="AMBALA">AMBALA</option>
                            <option value="LUDHIANA" id="LUDHIANA">LUDHIANA</option>
                            <option value="PATIALA" id="PATIALA">PATIALA</option>
                            <option value="PHAGWARA" id="PHAGWARA">PHAGWARA</option>
                            <option value="CHANDIGARH" id="CHANDIGARH">CHANDIGARH</option>

                        </select>-->
                       <form:select path = "destination">
                             <form:option value = "NONE" label = "Select"/>
                             <form:option value="JALANDHAR" label="JALANDHAR"/>
                             <form:option value="AMBALA" label="AMBALA"/>
                             <form:option value="LUDHIANA" label="LUDHIANA"/>
                             <form:option value="PATIALA" label="PATIALA"/>
                             <form:option value="PHAGWARA" label="PHAGWARA"/>
                             <form:option value="CHANDIGARH" label="CHANDIGARH"/>
                         </form:select>   
                    </td>
                </tr>
                <tr>
                    <td><form:label path="ticketType">Ticket Type</form:label></td>
                    <td>
                    <form:select path="ticketType">
                        <form:option value="E" label="E"/>
                        <form:option value="I" label="I"/>
                    </form:select>
                    </td>
                </tr>
              
                <tr>
                    <td>Journey Date :</td>
                    <td><input type="date" id="journeydate"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value='Submit'/></td>
                </tr>
            </table>
        </form:form>
    </body>
</html>
