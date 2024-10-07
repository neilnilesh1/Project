<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>SignUp</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="SignupAction.jsp" method ="post">
    <input type = "text" name = "name" placeholder = "Enter Name" required>
 	<input type = "text" name = "email" placeholder = "Enter email" required>
 	<input type = "text" name = "mobileNumber" placeholder = "Enter Mobile Number" required>
 	<select name = "securityQuestion" required>
 	<option value = "What was tour first car">What was tour first car?</option>
 	<option value = "what is the name of your first pet?">what is the name of your first pet?</option>
 	<option value = "what elementary school did you attended?">what elementary school did you attended?</option>
 	<option value = "What is the name of the town where you were born?">What is the name of the town where you were born?</option>
 	</select>
 	<input type = "text" name = "answer" placeholder = "Answer" required>
 	<input type = "text" name = "password" placeholder = "password" required>
 	<input type = "Submit" Value = "signup" required>
      <h2><a href="login.jsp">Login</a></h2>
      </form>
  </div>

		<div class='whysign'>
			<%
			String msg = request.getParameter("msg");
			if ("valid".equals(msg)) {
			%>

			<h1>Successfully Updated</h1>

			<%
			} else if ("invalid".equals(msg)) {
			%>
			<h1>Some thing Went Wrong! Try Again !</h1>

			<% } %>



			<h2>Online Shopping</h2>
			<p>The Online Shopping System is the application that allows the
				users to shop online without going to the shops to buy them.</p>
		</div>
	</div>

</body>
</html>