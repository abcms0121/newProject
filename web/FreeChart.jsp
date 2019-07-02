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
        table{

        }

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
        .jumbotron{
            background: #ffc107;
        }
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
                <th colspan="9" style="text-align:left;height:60px; background-color:#EEEEEE;font-size:17px;">오늘의 게임순위</th>
            </tr>
            </thead>
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
                String searchname=(String)request.getParameter("search");
                System.out.print(searchname);


            %>
            <tr align=center>
                <td style="font-size:20px;font-weight: bold; font-style: italic;" width="10%"><%=1%></td>
                <%for(int i=0;i<gn.namearr.size();i++){
                    if(gn.namearr.get(i).equals(searchname)){
                %>
                <td style="font-size:20px;font-weight: bold; font-style: italic;" width="10%"><img src="<%=gi.imgarr.get(i)%>"></td>
                <td style="font-size:20px;font-weight: bold; font-style: italic;" width="80%"><a href="FreeChart2.jsp?name=<%=gn.namearr.get(i)%>&img=<%=gi.imgarr.get(i)%>&star=<%=gs.stararr.get(i)%>" style="color:black;"><%=gn.namearr.get(i)%></a></td>
               <%
                           break;
                       }

                   }
               %>
            </tr>
            <tr><td colspan="9" style="text-align:right;"><a href="Main.jsp" style="text-align:right;color:grey;">순위 전체보기</a></td></tr>
        </table>

        <div style="top:-700px; margin-left:100px; width:600px;height:500px; overflow:hidden;margin:auto">
        </div>
    </div>
</div>
<script src="js/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
    function moreinfo(){
        var input = document.getElementById("search").value;

        window.location.href="FreeChart.jsp?name="+input

    }
    var arr = new Array();

    <%for(int j=0;j<50;j++){%>
    arr[<%=j%>]='<%=gn.namearr.get(j)%>';

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
<%
gn.clear();
gi.clear();
gs.clear();
%>
</body>
</html>