<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false" 
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Guestbook</title>
</head>
<body>
  
  <p align="right"><table>
    logged as <font color="green">${nameSession} </font> 
    <form:form method="POST" action="logout" modelAttribute="user">
    <input type="submit" value="Logout"/> 
    </form:form>
    <form:form method="POST" action="viewProfile" modelAttribute="user">
    <input type="submit" value="Profile"/> 
    </form:form>
  </table></p>
  
  <table width="100%"><tr><p align="center">
    <form:form method="POST" action="/Guestbook/addEntry">
      <form:label path="message"></form:label>
      <form:input path="message" size="80" />
      <!--<input type="submit" value="Submit"/>-->
    </form:form>
  </p></tr></table>
   
  <table>
    <c:forEach var="entry" items="${Entries}" varStatus="status">
      <tr>
        <td><font color="green">${entry.name}:</font></td>
        <td>${entry.message}</td>                          
      </tr>
    </c:forEach>
  </table>
  
</body>
</html>