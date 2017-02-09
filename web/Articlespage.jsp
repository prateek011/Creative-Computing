<%-- 
    Document   : Articlespage
    Created on : Jul 9, 2016, 11:38:00 AM
    Author     : Prateek
--%>

<%@page import="org.hibernate.Query"%>
<%@page import="com.MyHibernateUtilArticle"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
<%@page import="com.Articledata"%>
<%@page import="com.Allaction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Articles</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    </head>
    <body>
        <%
            Session s = MyHibernateUtilArticle.getSession();
            Query q = s.createQuery("from Articledata");
            List<Articledata> data = q.list();
        %>    
        <nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp"><img src="images/logo.jpg" style="height: 100px; width: 80px;"></a>
                </div>
            <div class="col-lg-offset-10">
                    <br/><a href="ArticlesSubmission.jsp" class=" navbar-link"><h3>Submit Articles</h3></a>
                </div>
                <div>
                    <a href="profile.jsp" class="navbar-link"></a>
                </div>
        </nav>
        
                
        <div class="container">
        <div class="row">
          <nav class="col-sm-3" id="myScrollspy">
              <%
        for(Articledata m : data)
        {
        %>
        <ul class="nav nav-pills nav-stacked">
            <li><a href="#section<%=m.getAid()%>"><% out.println(m.getAtopic());%></a></li>
               
            </ul><%}%>
          </nav>
          
          <div class="col-sm-9">
              <% for(Articledata m : data)
        {%><div class="col-lg-10">
            <div id="section<%=m.getAid()%>">
                
                    <h1><% out.println(m.getAtopic());%></h1>
              <p style=""><% out.println(m.getAbody());%></p></div>
          </div> 
          <%   
          }
          %>
          </div>
        </div>
        </div>       
        <footer style="background:#666699;width:100%;height:50px;position:relative;bottom:0;left:0;">
            <center><p style="padding-top:15px;"><b>@Copyright</b></p></center>   
        </footer>       
    </body>
</html>
