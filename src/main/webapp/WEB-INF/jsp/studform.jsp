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
 
 <h1>Add New Student</h1> 
   <div class="card" style=" text-align:center; width:500px; border:10px; padding: 10px; border-radius: 15px; border: 1px solid; margin-top:7%; margin-left:3%">
  
       <form:form method="post" action="save"> 
            <div class="card" style=" text-align:left;width:400px; border:10px; padding: 10px; border-radius: 15px; border: 1px solid; margin-top:7%; margin-left:3%; margin-bottom:4%">
          
        <table >    
         <tr>    
          <td>Name : </td>   
          <td><form:input path="name"  /></td>  
         </tr>    
         <tr>    
          <td>Gender :</td>    
          <td><form:input path="gender" /></td>  
         </tr>   
         <tr>    
          <td>Standard :</td>    
          <td><form:input path="standard" /></td>  
         </tr>   
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table> 
        </div>   
       </form:form> 
       </div>   
</body>
</html>