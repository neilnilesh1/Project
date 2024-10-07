<%@page import ="project.ConnectionProvider" %>
<%@page import ="java.sql.*" %>
<%@include file ="header.jsp" %>
<%@include file ="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>ChangeAddress</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))	
{
%>
<h3 class="alert">Address Successfully Updated !</h3>
<%}%>
<%
if("invalid".equals(msg))	
{
%>
<h3 class="alert">Some thing Went Wrong! Try Again!</h3>
<%}%>
<%
try{
	Connection con = ConnectionProvider.getCon();
	Statement st= con.createStatement();
	ResultSet rs= st.executeQuery("select * from users where email='"+email+"'");
	while(rs.next())
	{
%>
<form action="" method="post">
<h3>Enter Address</h3>
 <input class = "input-style" type="text" name="address" placeHolder="enter address" required>
 <hr>
 <h3>Enter city</h3>
 <input class = "input-style" type="text" name="city" placeHolder="enter text"" required>
<hr>
<h3>Enter State</h3>
<input class = "input-style" type="text" name="state" placeHolder="enter state" required>
<hr>
<h3>Enter country</h3>
<input class = "input-style" type="text" name="country" placeHolder="enter country" required>
<hr>
 <button class="button" type="submit">Save<i class='far fa-arrow-alt-circle-right'></i></button>	
</form>
</body>

<%
	}
}
catch(Exception e)
{
	System.out.println(e);	
}
%>
<br><br><br>
</html>