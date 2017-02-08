<!DOCTYPE HTML>
<html>
	<head>
		<title>Login</title>
		<link rel="stylesheet" type="text/css" href="css/design.css">
                <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>

<div id="loader"></div>
           
            <!--Navigation bar-->
            <nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp"><img src="images/logo.jpg" style="height: 100px; width: 80px;"></a>
                </div>
                <div><br/>
                    <a href="profile.jsp" class="navbar-link"><%%></a>
                </div>
            </nav>
             
            <!--Login Form-->
            
               
            <form action="Loginaction" method="post">
                 
                    <center>
                        <h1 style="color: #FFFFCC">Login</h1>
                    </center>
                <center>
                    <br/><input placeholder="Username" type="text" name="username" required ><br/>
                    <input placeholder="Password" type="password" name="password" required ><br/>
                    <button value="submit" type="submit">Login</button><br/>
                </center>
		</form>
            
            <!--Footer-->
            <footer style="background:#666699;width:100%;height:50px;position:absolute;bottom:0;left:0;">
                    <center><p style="padding-top:15px;"><b>@Copyright</b></p></center>   
                </footer>
            <link type="text/javascript" href="js/jquery.min.js">
            <link type="text/javascript" href="js/bootstrap.min.js">
            
	</body>
</html>