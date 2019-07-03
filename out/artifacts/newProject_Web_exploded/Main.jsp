<%@page import="gamefile.GameStar"%>
<%@page import="gamefile.GameImg"%>
<%@page import="gamefile.GameName"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
    <title>Nantes - Onepage Business Template</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Custom styles for this template -->
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.default.min.css"  rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>

    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="js/jquery-3.4.1.js" type="text/javascript"></script>

    <style>
        .col-md-3{
            flow:inline-block;
            align-content: center;
            left:10%;
        }
    </style>
</head>
<body id="page-top">
<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand page-scroll" href="#page-top"><img src="images/logo.png" alt="Sanza theme logo"></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="hidden">
                    <a href="#page-top"></a>
                </li>
                <li>
                    <a class="page-scroll" href="#page-top">Home</a>
                </li>
                <li>
                    <a class="page-scroll" href="#about">About</a>
                </li>
                <li>
                    <a class="page-scroll" href="#features">Features</a>
                </li>
                <li>
                    <a class="page-scroll" href="#portfolio">Portfolio</a>
                </li>
                <li>
                    <a class="page-scroll" href="#partners">Partners</a>
                </li>
                <li>
                    <a class="page-scroll" href="#team">Team</a>
                </li>
                <li>
                    <a class="page-scroll" href="#contact">Contact</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
<!-- Header -->
<header>

</header>
<%
GameImg gi = new GameImg();
GameName gn = new GameName();
GameStar gs = new GameStar();
%>

<br><br><br>
<div align=center>
   <%-- <div class="container">
        <div class="row">
            <div class="col">
                <br><br>
                <p><h1>게임 전체 순위</h1></p>
                <br><br>
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#qwe">구글플레이</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#asd">앱스토어</a>
                    </li>

                </ul>
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="qwe">
                        <br>
                        <%
                            java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy"+"년 "+"MM"+"월 "+"dd"+"일");
                            String today = formatter.format(new java.util.Date()); %>
                        <p><h3 style="display:inline-block">구글 플레이스토어 게임 순위 </h3>(한국)-<%=today %>기준</p>
                        <table class="table">
                            <thead>

                            <tr style="text-align:left;height:60px; background-color:#EEEEEE;font-size:17px;">
                                <th style="text-align:left;height:60px; background-color:#EEEEEE;font-size:17px;width:8%;">순위</th>
                                <th colspan="2" >무료</th>
                                <th colspan="2" >유료</th>
                                <th colspan="2" >최고매출</th>
                            </tr>
                            </thead>
                            <tr align=center>
                            <%


                                String [] src={"free","charged","bestseller"};
                                String [] imgsrc={"free_img","charged_img","bestseller_img"};
                                String [] starsrc={"free_star","charged_star","bestseller_star"};


                                for(int p=0;p<3;p++){

                                    gi.create(imgsrc[p]);

                                    gs.create(starsrc[p]);
                                    gn.create(src[p]);

                                }



                                for(int i=0;i<50;i++){

                            %><tr>
                            <%if(i<=3){ %>
                            <td style="color:red;font-size:20px;font-weight: bold; font-style: italic;text-align:center;">
                                    <%}else{ %>
                            <td style="font-size:20px;font-weight: bold; font-style: italic; text-align:center;">
                                <%}%><%=i+1%></td>
                            <td><a href="FreeChart2.jsp?name=<%=gn.namearr.get(i)%>&img=<%=gi.imgarr.get(i)%>&star=<%=gs.stararr.get(i)%>"><img src="<%=gi.imgarr.get(i)%>"></a></td>
                            <td><a href="FreeChart2.jsp?name=<%=gn.namearr.get(i)%>&img=<%=gi.imgarr.get(i)%>&star=<%=gs.stararr.get(i)%>" style="color:black;"><%=gn.namearr.get(i) %></a></td>


                            <td><a href="FreeChart2.jsp?name=<%=gn.namearr.get(i+50)%>&img=<%=gi.imgarr.get(i+50)%>&star=<%=gs.stararr.get(i+50)%>"><img src="<%=gi.imgarr.get(i+50)%>"></a></td>
                            <td><a href="FreeChart2.jsp?name=<%=gn.namearr.get(i+50)%>&img=<%=gi.imgarr.get(i+50)%>&star=<%=gs.stararr.get(i+50)%>" style="color:black;"><%=gn.namearr.get(i+50) %></a></td>


                            <td><a href="FreeChart2.jsp?name=<%=gn.namearr.get(i+100)%>&img=<%=gi.imgarr.get(i+100)%>&star=<%=gs.stararr.get(i+100)%>"><img src="<%=gi.imgarr.get(i+100)%>"></a></td>
                            <td><a href="FreeChart2.jsp?name=<%=gn.namearr.get(i+100)%>&img=<%=gi.imgarr.get(i+100)%>&star=<%=gs.stararr.get(i+100)%>" style="color:black;"><%=gn.namearr.get(i+100) %></a></td>


                            <%} %>



                        </tr>

                        </table>
                    </div>
                    <div class="tab-pane fade" id="asd">
                        <br>
                        <p><h3 style="display:inline-block">앱스토어 게임 순위 </h3>(한국)-<%=today %>기준</p>
                        <table class="table" >
                            <thead>

                            <tr style="text-align:left;height:60px; background-color:#EEEEEE;font-size:17px;">
                                <th style="text-align:left;height:60px; background-color:#EEEEEE;font-size:17px;width:8%;">순위</th>
                                <th colspan="2" >무료</th>
                                <th colspan="2" >유료</th>
                                <th colspan="2" >최고매출</th>
                            </tr>
                            </thead>
                            <tr align=center>
                            <%
                                gn.namearr.clear();
                                gi.imgarr.clear();


                                String [] src2={"free_a","charged_a","bestseller_a"};
                                String [] imgsrc2={"free_img_a","charged_img_a","bestseller_img_a"};



                                for(int p=0;p<3;p++){

                                    gn.create(src2[p]);
                                    gi.create(imgsrc2[p]);

                                }

                                for(int z=0;z<50;z++){
                            %><tr>
                            <%if((z+1)<=3){ %>
                            <td style="color:red;font-size:20px;font-weight: bold; font-style: italic;">
                                    <%}else{ %>
                            <td style="font-size:20px;font-weight: bold; font-style: italic;">
                                <%}%><%=z+1%></td>
                            <td><a href="FreeChart2.jsp?name=<%=gn.namearr.get(z)%>&img=<%=gi.imgarr.get(z)%>"><img src="<%=gi.imgarr.get(z)%>"></a></td>
                            <td><a href="FreeChart2.jsp?name=<%=gn.namearr.get(z)%>&img=<%=gi.imgarr.get(z)%>" style="color:black;"><%=gn.namearr.get(z) %></a></td>


                            <td><a href="FreeChart2.jsp?name=<%=gn.namearr.get(z+50)%>&img=<%=gi.imgarr.get(z+50)%>"><img src="<%=gi.imgarr.get(z+50)%>"></a></td>
                            <td><a href="FreeChart2.jsp?name=<%=gn.namearr.get(z+50)%>&img=<%=gi.imgarr.get(z+50)%>" style="color:black;"><%=gn.namearr.get(z+50) %></a></td>


                            <td><a href="FreeChart2.jsp?name=<%=gn.namearr.get(z+100)%>&img=<%=gi.imgarr.get(z+100)%>"><img src="<%=gi.imgarr.get(z+100)%>"></a></td>
                            <td><a href="FreeChart2.jsp?name=<%=gn.namearr.get(z+100)%>&img=<%=gi.imgarr.get(z+100)%>" style="color:black;"><%=gn.namearr.get(z+100) %></a></td>


                            <%} %>



                        </tr>

                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>--%>

    <%--original container starts--%>
   <div class="container">


          <table class="table">
              <thead>

              <tr style="text-align:left;height:60px; background-color:#EEEEEE;font-size:17px;">
                  <th style="text-align:left;height:60px; background-color:#EEEEEE;font-size:17px;width:8%;">순위</th>
                  <th colspan="2" >무료</th>
                  <th colspan="2" >유료</th>
                  <th colspan="2" >최고매출</th>
              </tr>
              </thead>
              <tr align=center>
                  <%

/*	GameName gn=new GameName();
GameImg gi=new GameImg();
GameStar gs=new GameStar();*/

	String [] src={"free","charged","bestseller"};
	String [] imgsrc={"free_img","charged_img","bestseller_img"};
	String [] starsrc={"free_star","charged_star","bestseller_star"};


	for(int p=0;p<3;p++){

		gi.create(imgsrc[p]);

		gs.create(starsrc[p]);
		gn.create(src[p]);

	}



for(int i=0;i<50;i++){

%><tr>
              <%if(i<=3){ %>
              <td style="color:red;font-size:20px;font-weight: bold; font-style: italic;text-align:center;">
                      <%}else{ %>
              <td style="font-size:20px;font-weight: bold; font-style: italic; text-align:center;">
                  <%}%><%=i+1%></td>
              <td><a href="FreeChart2.jsp?name=<%=gn.namearr.get(i)%>&img=<%=gi.imgarr.get(i)%>&star=<%=gs.stararr.get(i)%>"><img src="<%=gi.imgarr.get(i)%>"></a></td>
              <td><a href="FreeChart2.jsp?name=<%=gn.namearr.get(i)%>&img=<%=gi.imgarr.get(i)%>&star=<%=gs.stararr.get(i)%>" style="color:black;"><%=gn.namearr.get(i) %></a></td>


              <td><a href="FreeChart2.jsp?name=<%=gn.namearr.get(i+50)%>&img=<%=gi.imgarr.get(i+50)%>&star=<%=gs.stararr.get(i+50)%>"><img src="<%=gi.imgarr.get(i+50)%>"></a></td>
              <td><a href="FreeChart2.jsp?name=<%=gn.namearr.get(i+50)%>&img=<%=gi.imgarr.get(i+50)%>&star=<%=gs.stararr.get(i+50)%>" style="color:black;"><%=gn.namearr.get(i+50) %></a></td>


              <td><a href="FreeChart2.jsp?name=<%=gn.namearr.get(i+100)%>&img=<%=gi.imgarr.get(i+100)%>&star=<%=gs.stararr.get(i+100)%>"><img src="<%=gi.imgarr.get(i+100)%>"></a></td>
              <td><a href="FreeChart2.jsp?name=<%=gn.namearr.get(i+100)%>&img=<%=gi.imgarr.get(i+100)%>&star=<%=gs.stararr.get(i+100)%>" style="color:black;"><%=gn.namearr.get(i+100) %></a></td>


              <%} %>



          </tr>

          </table>
    </div>
    <%--original container ends--%>
</div>


<p id="back-top">
    <a href="#top"><i class="fa fa-angle-up"></i></a>
</p>


<!-- Modal for portfolio item 1 -->
<div class="modal fade" id="Modal-1" tabindex="-1" role="dialog" aria-labelledby="Modal-label-1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="Modal-label-1">Dean & Letter</h4>
            </div>
            <div class="modal-body">
                <img src="images/demo/portfolio-1.jpg" alt="img01" class="img-responsive" />
                <div class="modal-works"><span>Branding</span><span>Web Design</span></div>
                <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal for portfolio item 2 -->
<div class="modal fade" id="Modal-2" tabindex="-1" role="dialog" aria-labelledby="Modal-label-2">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="Modal-label-2">Startup Framework</h4>
            </div>
            <div class="modal-body">
                <img src="images/demo/portfolio-2.jpg" alt="img01" class="img-responsive" />
                <div class="modal-works"><span>Branding</span><span>Web Design</span></div>
                <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal for portfolio item 3 -->
<div class="modal fade" id="Modal-3" tabindex="-1" role="dialog" aria-labelledby="Modal-label-3">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="Modal-label-3">Lamp & Velvet</h4>
            </div>
            <div class="modal-body">
                <img src="images/demo/portfolio-3.jpg" alt="img01" class="img-responsive" />
                <div class="modal-works"><span>Branding</span><span>Web Design</span></div>
                <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal for portfolio item 4 -->
<div class="modal fade" id="Modal-4" tabindex="-1" role="dialog" aria-labelledby="Modal-label-4">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="Modal-label-4">Smart Name</h4>
            </div>
            <div class="modal-body">
                <img src="images/demo/portfolio-4.jpg" alt="img01" class="img-responsive" />
                <div class="modal-works"><span>Branding</span><span>Web Design</span></div>
                <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal for portfolio item 5 -->
<div class="modal fade" id="Modal-5" tabindex="-1" role="dialog" aria-labelledby="Modal-label-5">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="Modal-label-5">Fast People</h4>
            </div>
            <div class="modal-body">
                <img src="images/demo/portfolio-5.jpg" alt="img01" class="img-responsive" />
                <div class="modal-works"><span>Branding</span><span>Web Design</span></div>
                <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<%
    gn.namearr.clear();
    gi.imgarr.clear();
    gs.stararr.clear();
%>
<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/cbpAnimatedHeader.js"></script>
<script src="js/jquery.appear.js"></script>
<script src="js/SmoothScroll.min.js"></script>
<script src="js/theme-scripts.js"></script>
</body>
</html>