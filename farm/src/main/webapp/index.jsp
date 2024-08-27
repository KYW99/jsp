<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>index.html</title>
    <link rel="stylesheet" href="/farm/css/index.css">
</head>
<body>
<div id = "wrapper">
	<%@ include file="/WEB-INF/_header.jsp" %>
    <main>
        <section class="main">
            <section class="banner">

                <img src="./img/main_slide_img1.jpg " alt = "배너배경이미지" class = "bannerbackground">
                <img src="./img/main_slide_img_tit.png" alt ="배너배경제목" class ="bannertitle">
                <img src="./img/popup.png" alt = "배너 왼쪽" class = "banner1right">
            </section>
            <section class = "shopping">
                <img src="./img/main_market_tit.png"></img>
                
                <article>
                    <img src="./img/market_item1.jpg">
                    <span class = "category">과일</span>      
                    <span class = "itemname">사과 500g</span>
                    <span class = "originprice"></span>
                    <h3><span class = "price">3,600</span></h3>
                </article>
                <article>
                    <img src="./img/market_item2.jpg">
                    <span class = "category">과일</span>
                    <span class = "itemname">배 500g</span>
                    <span class = "originprice"></span>
                    <h3><span class = "price">3,600</span></h3>
                </article>
                <article>
                    <img src="./img/market_item3.jpg">
                    <span class = "category">과일</span>
                    <span class = "itemname">토마토 500g</span>
                    <span class = "originprice"></span>
                    <h3><span class = "price">3,600</span></h3>
                </article>
                <article>
                    <img src="./img/market_item4.jpg">
                    <span class = "category">과일</span>
                    <span class = "itemname">딸기 500g</span>
                    <span class = "originprice"></span>
                    <h3><span class = "price">3,600</span></h3>
                </article>
                <article>
                    <img src="./img/market_item5.jpg">
                    <span class = "category">과일</span>
                    <span class = "itemname">귤 500g</span>
                    <span class = "originprice"></span>
                    <h3><span class = "price">3,600</span></h3>
                </article>
                <article>
                    <img src="./img/market_item6.jpg">
                    <span class = "category">과일</span>
                    <span class = "itemname">사과 500g</span>
                    <span class = "originprice"></span>
                    <h3><span class = "price">3,600</span></h3>
                </article>
            </section>

            <section class ="secondbanner">
                <img src = "./img/main_banner_sub1_bg.jpg" class = "left">
                <img src = "./img/main_banner_sub1_tit.png" class = "lefttit">
                <img src = "./img/main_banner_sub2_bg.jpg" class="right">
                <img src = "./img/main_banner_sub2_tit.png" class = "righttit">
            </section>

            <section class="news">
                <div class="news_box garden">
                    <img src="./img/main_latest1_tit.png" alt="" class = >
                    <div >
                        <img src="./img/main_latest1_img.jpg" alt="">
                        <div class = "textbox">
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="news_box school">
                    <img src="./img/main_latest2_tit.png" alt="">
                    <div >
                        <img src="./img/main_latest2_img.jpg" alt="">
                        <div class ="textbox">
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="news_box crops">
                    <img src="./img/main_latest3_tit.png" alt="">
                    <div >
                        <img src="./img/main_latest3_img.jpg" alt="">
                        <div class = "textbox">
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                            <div>
                                <img src="./img/main_latest_icon.gif" alt="">
                                <a href="#">토마토! 건강하게 길러...</a>
                                <span>20-12-22</span>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="info">
                <div class="info_box user">
                    <img src="./img/main_sub2_cs_tit.png" alt="">
                    <div class="info_user_cs">
                        <img src="./img/main_sub2_cs_img.png" alt="">
                        <img src="./img/main_sub2_cs_txt.png" alt="">
                        <div>
                            <p>평일: AM 09:00 ~ PM 06:00</p>
                            <p>점심: PM 12:00 ~ PM 01:00</p>
                            <p>토, 일요일, 공휴일 휴무</p>
                        </div>
                    </div>
                    <div class="info_user_btn">
                        <a href="#"><img src="./img/main_sub2_cs_bt1.png" alt=""></a>
                        <a href="#"><img src="./img/main_sub2_cs_bt2.png" alt=""></a>
                        <a href="#"><img src="./img/main_sub2_cs_bt3.png" alt=""></a>
                    </div>
                </div>
                <div class="info_box account">
                    <img src="./img/main_sub2_account_tit.png" alt="">
                    <div class = "this">
                        <p>기업은행 123-456789-01-01-012</p>
                        <p>기업은행 01-1234-56789</p>
                        <p>기업은행 123-456789-01-01-012</p>
                        <p>기업은행 123-456789-01-01</p>
                        <p>예금주 (주)팜스토리</p>
                    </div>
                </div>
                <div class="info_box notice">
                    <img src="./img/main_sub2_notice_tit.png" alt="">
                    <div class="info_notice_table">
                        <div>
                            <a href="#">안녕하세요. 홈페이지 오픈 기념 이벤트를 ...</a>
                            <span>20-12-22</span>
                        </div>
                        <div>
                            <a href="#">안녕하세요. 홈페이지 오픈 기념 이벤트를 ...</a>
                            <span>20-12-22</span>
                        </div>
                        <div>
                            <a href="#">안녕하세요. 홈페이지 오픈 기념 이벤트를 ...</a>
                            <span>20-12-22</span>
                        </div>
                        <div>
                            <a href="#">안녕하세요. 홈페이지 오픈 기념 이벤트를 ...</a>
                            <span>20-12-22</span>
                        </div>
                        <div>
                            <a href="#">안녕하세요. 홈페이지 오픈 기념 이벤트를 ...</a>
                            <span>20-12-22</span>
                        </div>
                    </div>
                </div>
            </section>
        </section>

    </main>
   <%@ include file="/WEB-INF/_footer.jsp" %>
</div>
</body>
</html>