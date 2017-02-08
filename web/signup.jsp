<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>SignUp | Creative Computing</title>
    <link rel="stylesheet" type="text/css" href="css/signup.css">
     
</head>
<body>
    <%
    
    System.out.println(request.getAttribute("alert"));
    %>
   
    <form action="Signupaction" method="post">
        <input id="input-1" type="text" placeholder="Full Name" name="fullname" required autofocus />
  <label for="input-1">
    <span class="label-text">Full Name</span>
    <span class="nav-dot"></span>
    <div class="signup-button-trigger">Sign Up</div>
  </label>
        <input id="input-2" type="text" placeholder="Username" name="username" required />
  <label for="input-2">
    <span class="label-text">Username</span>
    <span class="nav-dot"></span>
  </label>
        <input id="input-3" type="email" placeholder="email@address.com" name="emailid" required />
  <label for="input-3">
    <span class="label-text">Email</span>
    <span class="nav-dot"></span>
  </label>
        <input id="input-4" type="password" placeholder="Password" name="password" required />
  <label for="input-4">
    <span class="label-text">Password</span>
    <span class="nav-dot"></span>
  </label>
        <input id="input-5" type="password" placeholder="Confirm Password" name="repass" required />
  <label for="input-5">
    <span class="label-text">Confirm Password</span>
    <span class="nav-dot"></span>
  </label>
  <button type="submit">Create Your Account</button>
  <p class="tip">Press Tab</p>
  <div class="signup-button">Sign Up</div>
</form>
    
</body>
</html>