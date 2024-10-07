<%@page import ="project.ConnectionProvider" %>
<%@page import ="java.sql.*" %>
<%@include file ="changeDetailsHeader.jsp" %>
<%@include file ="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>
<% String msg= request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%
}
else if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%}%>
<form action="changeSecurityQuestionAction.jsp" method="post">
<h3>Select Your New Security Question</h3>
  <select class="input-style" name = "securityQuestion" required>
 	<option value = "What was tour first car">What was tour first car?</option>
 	<option value = "what is the name of your first pet?">what is the name of your first pet?</option>
 	<option value = "what elementary school did you attended?">what elementary school did you attended?</option>
 	<option value = "What is the name of the town where you were born?">What is the name of the town where you were born?</option>
 	</select>
 <hr>
 <h3>Enter Your New Answer</h3>
 <input class="input-style" type="text" name="newAnswer" placeholder="Entere your new Answer" required>
<hr>
<h3>Enter Password (For Security)</h3>
<input class="input-style" type="password" name="password" placeholder="Enter your password(for security)" required>
<hr>
<button class="button" type="submit">save<i class='far fa-arrow-alt-circle-right'></i></button> 
</form>
</body>
<br><br><br>
</html>