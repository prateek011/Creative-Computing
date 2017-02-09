<%-- 
    Document   : QuestionShow
    Created on : Jul 9, 2016, 11:39:28 AM
    Author     : Prateek
--%>

<%@page import="com.Response"%>
<%@page import="com.MyHibernateUtilAnswer"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.MyHibernateUtilQuery"%>
<%@page import="com.Querydata"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Queries</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    </head>
        <%
            Session s = MyHibernateUtilQuery.getSession();
            Query q = s.createQuery("from Querydata");
            List<Querydata> data = q.list();
        %>
    <body>
        <nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp"><img src="images/logo.jpg" style="height: 100px; width: 80px;"></a>
                </div>
                <div class="col-lg-offset-10">
                    <br/><a href="ArticlesSubmission.jsp" class=" navbar-link"><h3>Submit Query</h3></a>
                </div>
        </nav>
        <%
            for(Querydata m :data)
                {
        %>
        <div class="container">
        
        <div class="col-sm-9">
            <div id="section1"> 
              <h3><% out.println(m.getQtopic());%></h3>
              <p><h3>Question :-</h3> <br/><% out.println(m.getQbody());%></p>
              </div>
            </div>
        
        <a href="Qanswers.jsp?Id=<%=m.getQid()%>">Reply to this</a>
        
        <%}
            s.close();%>
            
            <%
            Session se = MyHibernateUtilAnswer.getSession();
            Query q1 = se.createQuery("from Response");
            List<Response> Adata = q1.list();
            for(Response m :Adata){
            %>
             <div class="col-sm-9">
            <div id="section1"> 
                <p><h3>Solutions :-</h3><br/> <% out.println(m.getAnswers());%></p>
              </div>
            </div>
             <%} %>
              </div>
        <footer style="background:#666699;width:100%;height:40px;position:fixed;bottom:0;left:0;">
            <center><p style="padding-top:15px;"><b>@Copyright</b></p></center>   
        </footer>
    </body>
</html>
