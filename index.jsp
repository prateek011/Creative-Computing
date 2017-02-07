<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <title>Creative Coding - Index</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        
        <link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
        <style>
            *{
                margin:0;
                padding:0;
            }
            body{
                font-family:Arial;
                background-image: url(images/bg.jpg);
                background-repeat: no-repeat;
                background-size: cover;
            }
            #content{
                margin:0 auto;
            }


        </style>
    </head>

    <body>
        <div id="content">
            
            <div class="title"></div>

            <div class="navigation" id="nav">
                <div class="item user">
                    <img src="images/bg_user.png" alt="" width="199" height="199" class="circle"/>
                    <a href="" class="icon"></a>
                    <h2>User</h2>
                    <ul>
                        <li><a href="#">Profile</a></li>
                        <li><a href="login.jsp">Login</a></li>
                        <li><a href="signup.jsp">SignUp</a></li>
                    </ul>
                </div>
                <div class="item shop">
                    <img src="images/bg_home.png" alt="" width="199" height="199" class="circle"/>
                    <a href="" class="icon"></a>
                    <h2>Home</h2>
                    <ul>
                        <li><a href="About.jsp">About Us</a></li>
                        <li><a href="Services.jsp">Services</a></li>
                        <li><a href="Contact.jsp">Contact</a></li>
                    </ul>
                </div>
                <div class="item fav">
                    <img src="images/bg_fav.png" alt="" width="199" height="199" class="circle"/>
                    <a href="" class="icon"></a>
                    <h2>Tour</h2>
                    <ul>
                        <li><a href="QuestionShow.jsp">Questions</a></li>
                        <li><a href="BlogShow.jsp">Blog</a></li>
                        <li><a href="Articlespage.jsp">Articles</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- The JavaScript -->
       <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
        <script type="text/javascript">
            $(function() {
                $('#nav > div').hover(
                function () {
                    var $this = $(this);
                    $this.find('img').stop().animate({
                        'width'     :'199px',
                        'height'    :'199px',
                        'top'       :'-25px',
                        'left'      :'-25px',
                        'opacity'   :'1.0'
                    },500,'easeOutBack',function(){
                        $(this).parent().find('ul').fadeIn(700);
                    });

                    $this.find('a:first,h2').addClass('active');
                },
                function () {
                    var $this = $(this);
                    $this.find('ul').fadeOut(500);
                    $this.find('img').stop().animate({
                        'width'     :'52px',
                        'height'    :'52px',
                        'top'       :'0px',
                        'left'      :'0px',
                        'opacity'   :'0.1'
                    },5000,'easeOutBack');

                    $this.find('a:first,h2').removeClass('active');
                }
            );
            });
        </script>
    </body>
</html>