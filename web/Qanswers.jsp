<%-- 
    Document   : Qanswers
    Created on : Jul 19, 2016, 8:43:45 PM
    Author     : Prateek
--%>

<%@page import="java.util.List"%>
<%@page import="com.Querydata"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.MyHibernateUtilQuery"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Answer</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    </head>
    <%HttpSession ses = request.getSession(true);
        String check = (String)ses.getAttribute("user");
        if(check == null)
        { request.setAttribute("error", "Plese login..");
            request.getRequestDispatcher("login.jsp").forward(request,response);}
    %>
    <body>
        <%
        String Id =  (String)request.getParameter("Id");
        
            Session s = MyHibernateUtilQuery.getSession();
            Query q = s.createQuery("from Querydata where qid='Id'");
            List<Querydata> data = q.list();
        %>
        <nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp"><img src="images/logo.jpg" style="height: 100px; width: 80px;"></a>
                </div>
                <div>
                    <br/><a href="QuestionSubmit.jsp" class=" navbar-link btn"  >Submit Your Query</a>
                </div>
        </nav>
    <center>
        <%  
        for(Querydata m :data){
            out.println("wiegfcbuwbfvciowjm");
            out.println("Question : "+m.getQbody());
        }
        %>
        <%request.setAttribute("Id",Id);%></center>
        <div class="container">
        <form action="QuesAnswer" method="post">
           <div class="form-group">
               <label for="name"class="col-sm-2 control-label">Answer :</label>
            <div class="col-sm-10">
              <textarea class="form-control" rows="5" name="Answer"></textarea>
            </div></div><br/>
            <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
            <br/><button type="submit" class="btn btn-primary">Submit Answer</button>
            </div>
            </div>
        </form>
        </div>
    
        
        
        <footer style="background:#666699;width:100%;height:50px;position:fixed;bottom:0;left:0;">
            <center><p style="padding-top:15px;"><b>@Copyright</b></p></center>   
        </footer>
    </body>
</html>
