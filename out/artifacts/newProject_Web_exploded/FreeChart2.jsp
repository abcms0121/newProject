<%@page import="gamefile.GameImg"%>
<%@page import="gamefile.GameName"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="gamefile.GameInfor" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>CHART</title>
<link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style>
    body{ align-content: center}
    tr{
        text-align:center}

    img{
        width:100px;
        height:100px;
    }
    .jumbotron{
        background: #ffc107;
    }
    input:-ms-input-placeholder{color:#a8a8a8;}
    .search{
        height:60px;
        width:650px;
        border:1px solid #1b5ac2;
        background:#ffffff;
       }
    input{
        font-size:20px;
        width:588px;
        height:100%;
        padding:10px;
        border:0px;
        outline:none;
        float:left;}
    button{
        width:60px;
        height:100%;
        border:0px;
        background:#1b5ac2;
        outline:none;
        float:right;
        color:#ffffff;}
tr,th{
text-align:center}

.star-rating { width:205px; }
.star-rating,.star-rating span { display:inline-block; height:39px; overflow:hidden; background:url(star.png)no-repeat; }
.star-rating span{ background-position:left bottom; line-height:0; vertical-align:top; }

</style>
</head>
<body>
<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
        <a href="#" class="navbar-brand">Gevolution</a>
        <!-- Toggle Button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item"><a href="#" class="nav-link">공지사항</a></li>
                <li class="nav-item"><a href="#" class="nav-link">갤러리</a></li>
                <li class="nav-item"><a href="#" class="nav-link">앨범</a></li>
                </ul>
         	<ul class="nav justify-content-end">
                <li class="nav-item" style="text-align:right;"><a href="#" class="nav-link">sign in</a></li>
                <li class="nav-item" style="text-align:right;"><a href="#" class="nav-link">sign up</a></li>
                <li class="nav-item" style="text-align:right;"><a href="#" class="nav-link">mypage</a></li>
                
            </ul>
        </div>
    </nav>


<div class="jumbotron text-center">
        <h1>Gevolution</h1>
        
</div>
<br><br><br>
<%--<div align=center>
<input type="text" style="width:30%;height:50px;"><a href="#"><img src="./submit.png" onmouseover="this.src='submit2.png'" onmouseout="this.src='./submit.png'" border="0" style="width:50px;height:50px;"></a></div>--%>
<div align="center">
<div class="search">
    <input type="text" id="search"name="search" placeholder="search">
    <button><img src="search.png" style="width:25px; height:25px;" onclick="moreinfo()"></button>
</div>
</div>
<br><br><br><br><br><br>

<%

String name=request.getParameter("name");
String img=request.getParameter("img");
String star=request.getParameter("star");
String info="gameinfo";
    GameInfor gi = new GameInfor();
    gi.create(info);

double sd=(Double.parseDouble(star)*20);
int si=(int)sd;
%>
<div class="container">
<table class="table">
    <thead>
    <tr>
        <th colspan="9" style="text-align:left;height:60px; background-color:#EEEEEE;font-size:17px;">게임 특징</th>
    </tr>
    </thead>
    <tr align="center">
        <td style="font-size:20px;font-weight: bold; font-style: italic;" width="50px">
            <img src="<%=img%>" width="150px" height="150px"><br><br>
            <h4><%=name%></h4><br>
            <span class='star-rating'>
            <span style ="width:<%=sd%>%"><%--<h5><%=star %></h5>--%></span>
            </span>
        </td>
        <td>
                <%for(int i=0;i<gi.infoarr.size();i++)
                {
                    %>
            <%=gi.infoarr.get(i)%>
            <%
                }%>
        </td>
    </tr>
    <tr><td colspan="9" style="text-align:right;"><a href="Main.jsp" style="text-align:right;color:grey;">순위 전체보기</a></td></tr>
</table>
</div>

<div class="jumbotron text-center mt-5 mb-0">
    <h3 class="text-secondary">Mid Project</h3>
    <p>This Homepage is powered by <span class="text-primary">2조</span> / Designed by <span class="text-primary">김민정 장희수 황상호 김시원</span></p>
</div>
<script src="js/bootstrap.js"></script>
<%
gi.clear();

%>

</body>
</html>