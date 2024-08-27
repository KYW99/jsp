<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>이벤트</title>
    <style>
        /*초기화*/
        *{
            margin: 0;
            padding: 0;
            font: normal 12px '고딕';
        }
        ul,ol{ list-style: none; }
        a{ text-decoration: none; color: #111; }
        input, textarea{ outline: none;}

        main>section{
        margin: 0 auto;
        }
        .banner{
        width: 980px;
        height: 184px;
        background-image: url("../img/sub_top_bg.jpg");
        position: relative;
        }
        .banner>img{
        position: absolute;
        bottom: 10px;
        left: 10px;
        }

        .content{
        width: 980px;
        height: 650px;
        box-sizing: border-box;
        }
        aside{
        width: 176px;
        height: 100%;
        background-image: url("../img/sub_aside_bg_line.png");
        background-repeat: no-repeat;
        background-position: right;
        box-sizing: border-box;
        float: left;
        }
        aside>img{
            margin-top: 30px;
        }
        aside>div{
            width: 175px;
            height: 233px;
            position: relative;
            margin-top: 30px;
            box-sizing: border-box;
        }
        aside>div>img{
            position: absolute;
            box-sizing: border-box;
        }
        aside>div>img:nth-child(2){
            top: 30px;
        }

        article{
            width: 802px;
            height: 100%;
            box-sizing: border-box;
            float: right;
            padding: 50px;
        }
        nav{
            box-sizing: border-box;
        }
        nav>div:nth-of-type(1){
            display: block;
            border-bottom: 2px solid #eee;
        }
        nav>div{
            position: relative;
        }
        .home_box{
            display: inline-block;
            box-sizing: border-box;
            position: absolute;
            right: 0;
        }
        .home_box img{
            position: relative;
            bottom: 1px;
        }
        .home_box p{
            color: #aaa;
            font-weight: bold;
        }
        .home_box strong{
            font-weight: bolder;
            color: lightgreen;
        }

        article>div{
            margin-top: 50px;
        }

    </style>
</head>
<body>
    <%@ include file="/WEB-INF/_header.jsp" %>
    <main>
        <section class="banner">
            <img src="../img/sub_top_tit4.png" alt="">
        </section>
        <section class="content">
            <aside>
                <img src="../img/sub_aside_cate4_tit.png" alt="">
                <div>
                    <img src="../img/sub_aside_bg_lnb.png" alt="">
                    <img src="../img/sub_cate4_lnb1_ov.png" alt="">
                </div>
            </aside>
            <article>
                <nav>
                    <div>
                        <img src="../img/sub_nav_tit_cate4_tit1.png" alt="">
                        <div class="home_box">
                            <p>
                                <img src="../img/sub_page_nav_ico.gif" alt="">
                                HOME > 이벤트 >
                                <strong>이벤트</strong>
                            </p>
                        </div>
                    </div>
                </nav>
                <div>게시판 글목록/글쓰기/글보기/글수정 출력</div>
            </article>
        </section>
    </main>
    <%@ include file="/WEB-INF/_footer.jsp" %>
</body>
</html>