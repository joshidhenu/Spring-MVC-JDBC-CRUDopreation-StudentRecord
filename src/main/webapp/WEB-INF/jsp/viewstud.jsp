<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Employees List</h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Id</th><th>Name</th><th>Gender</th><th>Standard</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="stud" items="${list}">   
   <tr>  
   <td>${stud.id}</td>  
   <td>${stud.name}</td>  
   <td>${stud.gender}</td>  
   <td>${stud.standard}</td>  
   <td><a href="editstud/${stud.id}">Edit</a></td>  
   <td><a href="deletestud/${stud.id}">Delete</a></td>  
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   <a href="studform">Add New Student</a>  
</body>
</html>