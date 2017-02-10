<%-- 
    Document   : QuestionSubmit
    Created on : Jul 9, 2016, 11:39:54 AM
    Author     : Prateek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Question Submit</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    </head>
    <%HttpSession ses = request.getSession(true);
        String check = (String)ses.getAttribute("user");
        if(check == null)
        { request.setAttribute("error", "Plese login..");
            request.getRequestDispatcher("login.jsp").forward(request,response);}
    %>
    <body background ="">
        <nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp"><img src="images/logo.jpg" style="height: 100px; width: 80px;"></a>
                </div>
                <div>
                    <a href="profile.jsp" class="navbar-link"><%%></a>
                </div>
        </nav>
        
                <div class="container-fluid">
                    <div class="jumbotron">
                        <center><h2>Ask Your Queries  ???</h2></center><br/>
                        <form class="form-horizontal" action="Quersubaction" method="post">
                        <div class="form-group">
                        <label class="col-sm-2 control-label">Question Topic:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" placeholder="Enter Topic Name" name="Qtopic">
                        </div>
                        </div><br/>
                        <div class="form-group">
                        <label for="name"class="col-sm-2 control-label">Question Body :</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" rows="10" name="Qbody"></textarea>
                        </div></div><br/>
                        <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-primary">Submit Question</button>
                        </div>
                        </div>
                        </form>
                    </div>
                </div>
                <footer style="background:#666699;width:100%;height:50px;position:absolute;bottom:100;left:0;">
                    <center><p style="padding-top:15px;"><b>@Copyright</b></p></center>   
                </footer>
                
    </body>
</html>
