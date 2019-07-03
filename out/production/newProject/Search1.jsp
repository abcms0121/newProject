<%@page import="gamefile.GameStar"%>
<%@page import="gamefile.GameImg"%>
<%@page import="gamefile.GameName"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>CHART</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>

    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <style>

        tr{
            text-align:center}

        img{
            width:100px;
            height:100px;
        }
        input:-ms-input-placeholder{color:#a8a8a8;}
        .search{
            height:60px;
            width:650px;
            border:1px solid #1b5ac2;
            background:#ffffff;}
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
    </style>

</head>
<body>
<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
    <a href="#" class="navbar-brand">Gevolution</a>
    <!-- Toggle Button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar" onclick="moreinfo()">
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
<div align=center>
    <div class="search">
        <input type="text" id="search"name="search" placeholder="search">
        <button><img src="search.png" style="width:25px; height:25px;" onclick="moreinfo()"></button>
    </div>
    <br><br><br><br><br><br>
    <div class="container">

        <table class="table">
            <thead>
            <tr>

                <th colspan="9" style="text-align:left;height:60px; background-color:#EEEEEE;font-size:17px;">검색 결과</th>
            </tr>
            </thead>
            <tr align=center>
                <%
                    GameName gn=new GameName();
                    GameImg gi=new GameImg();
                    GameStar gs=new GameStar();
                    String src="free";
                    String imgsrc="free_img";
                    String starsrc="free_star";
                    gn.create(src);
                    gi.create(imgsrc);
                    gs.create(starsrc);



                    for(int i=1;i<=15;i++){
                %>
                <%if(i<=3){ %>
                <td style="color:red;font-size:20px;font-weight: bold; font-style: italic;">
                        <%}else{ %>
                <td style="font-size:20px;font-weight: bold; font-style: italic;">
                    <%}%><%=i%></td>
                <td><img src="<%=gi.imgarr.get(i-1)%>"></td>
                <td><a href="FreeChart2.jsp?name=<%=gn.namearr.get(i-1)%>&img=<%=gi.imgarr.get(i-1)%>&star=<%=gs.stararr.get(i-1)%>" style="color:black;"><%=gn.namearr.get(i-1) %></a></td>
                <%if(i%3==0){%>
            </tr><tr><%} %>
                <%} %>
            <tr><td colspan="9" style="text-align:right;"><a href="#" style="text-align:right;color:grey;">순위 전체보기</a></td></tr>
        </table>

        <div style="top:-700px; margin-left:100px; width:600px;height:500px; overflow:hidden;margin:auto">
            <iframe style="position:relative; top:-750px; left:-20px;" width="1000px" height="1089px" src="http://www.gevolution.co.kr/" scrolling="no"></iframe>

        </div>
    </div>
</div>
<script type="text/javascript">
    function moreinfo(){
        var input = document.getElementById("search").value;


        alert(input);
        window.location.href="FreeChart.jsp?name="+input;


    }
    var arr = new Array();

    <%for(int i=0;i<50;i++){%>
    arr[<%=i%>]='<%=gn.namearr.get(i)%>';

    <%}%>
    $("#search").autocomplete({

        source: arr,

        select: function(event, ui) {

            console.log(ui.item);

        },

        focus: function(event, ui) {

            return false;

            //event.preventDefault();

        }

    });






</script>


<div class="jumbotron text-center mt-5 mb-0">
    <h3 class="text-secondary">Mid Project</h3>
    <p>This Homepage is powered by <span class="text-primary">2조</span> / Designed by <span class="text-primary">김민정 장희수 황상호 김시원</span></p>
</div>
<script src="js/bootstrap.js"></script>
</body>
</html>