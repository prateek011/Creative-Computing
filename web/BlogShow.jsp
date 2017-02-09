<%-- 
    Document   : BlogShow
    Created on : Jul 9, 2016, 11:38:58 AM
    Author     : Prateek
--%>

<%@page import="com.MyHibernateUtilBlog"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.Blogdata"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blogs</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        
    </head>
        <%
            Session s = MyHibernateUtilBlog.getSession();
            Query q = s.createQuery("from Blogdata");
            List<Blogdata> data = q.list();
        %>
    <body data-spy="scroll" data-target="#myScrollspy" data-offset="20">
        <nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp"><img src="images/logo.jpg" style="height: 100px; width: 80px;"></a>
                </div>
                <div class="col-lg-offset-10">
                    <br/><a href="ArticlesSubmission.jsp" class=" navbar-link"><h3>Start Blog</h3></a>
                </div>
        </nav>
        <div class="container">
        <div class="row">
          <nav class="col-sm-3" id="myScrollspy">
              <div class="jumbotron">
              <img src="images/propic.png">
              <h3>${requestScope.uname}</h3>
              </div>
          </nav>
          <%
          for(Blogdata b :data)
          {
          %>
          <div class="col-sm-9">
            <div id="section1"> 
                <div class="jumbotron">
                    <center><h2><%out.println(b.getBtype());%></h2></center>
                <p><%out.println(b.getBintro());%><p>
                <p><%out.println(b.getBcontent());%></p> </div>         
          </div>
        </div>
          <%}%>
        </div></div>
        <footer style="background:#666699;width:100%;height:50px;position:relative;bottom:0;left:0;">
            <center><p style="padding-top:15px;"><b>@Copyright</b></p></center>   
        </footer>
    </body>
</html>
