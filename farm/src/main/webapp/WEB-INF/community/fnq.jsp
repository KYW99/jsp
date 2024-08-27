<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>community5.html</title>

    <style>
    
    * {
            margin: 0;
            padding: 0;
            font: normal 12px '고딕';
        }
        ul, ol {list-style: none;}
        a {text-decoration: none; color: #111;}
        input, textarea {outline: none;}
        
        #wrapper {
       position: relative;
       width: 1920px;
       height: 1106px;
        background: #FFFFFF;
        margin: 0 auto;

        }
        
        .subtopbg1{
            position: absolute;
            width: 980px;
            height: 184px;
            left: 470px;
            right: 470px;
            top: 145px;

            background: url(.jpg);


        }
        .subtopbg1 .subtoptit1{
            position: absolute;
            width: 326px;
            height: 37px;
            left: 10px;
            bottom: 10px;
                    
            background: url(.png);

        }


        main {
            position: absolute;
            height: 650px;
            left: 470px;
            right: 470px;
            top: 326px;
        }
        main > aside{
            position: absolute;
            width: 176px;
            height: 650px;
            left: 0px;
            top: 0px;

            background: url(.png);

        }

        main > #asidesize{
            position: absolute;
            width: 176px;
            height: 650px;
            left: 470px;
            top: 340px;

            background: url(.png);
            
        }
        
        .asidegate1{
            position: absolute;
            width: 129px;
            height: 44px;
            left: 16px;
            top: 16px;

            background: url(.png);


        }

        main #asidesize .asidebgline{
            position: relative;
            top: 37px;
            float: right;
            
        }

        .asidelnb{
            position: absolute;
            width: 175px;
            height: 233px;
            left: 0px;
            top: 81px;

            background: url('img/sub_aside_bg_lnb.png');

        }

        .asidelnb .lnb1{
            position: absolute;
            left: 0px;
            right: 0px;
            top: 26px;
            bottom: 178px;

            background: url(.png);


        }
        .asidelnb .lnb2{
            position: absolute;
            left: 0px;
            right: 0px;
            top: 61px;
            bottom: 143px;

            background: url(.png);


        }
        .asidelnb .lnb3{
            position: absolute;
            left: 0px;
            right: 0px;
            top: 96px;
            bottom: 108px;

            background: url(.png);

        }
        .asidelnb .lnb4{
            position: absolute;
            left: 0px;
            right: 0px;
            top: 131px;
            bottom: 73px;

            background: url(.png);

        }
        .asidelnb .lnb5{
            position: absolute;
            left: 0px;
            right: 0px;
            top: 166px;
            bottom: 38px;

            background: url(.png);

        }

        .hello{
            position: absolute;
            width: 802px;
            height: 650px;
            left: 176px;
            top: 0px;
        }

        .hello > article > nav{
            box-sizing: border-box;
            position: absolute;
            width: 762px;
            height: 72px;
            left: 40px;
            right: 0px;
            top: 0px;

            border-bottom: 1px solid #C2C2C2;

        }
        .hello > article > nav .navtit1{
            position: absolute;
            width: 131px;
            height: 24px;
            left: 0px;
            bottom: 5px;

            background: url(.png);

        }
        .hello > article > nav .smallhello{
            position: absolute;
            height: 17px;
            left: 75.21%;
            right: 0%;
            bottom: 5px;
            white-space: nowrap;
       
        }
       

        .hello > article > nav .smallhello .smallhello2{
            position: absolute;
            width: 169.07px;
            height: 14px;
            left: 3px;
            top: 1px;

            font-family: Arial, Helvetica, sans-serif; /* 폰트 패밀리 */
            font-style: normal; /* 폰트 스타일 */
            font-weight: 400; /* 폰트 굵기 */
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;

            color: #8C8C8C;


        }
        .hello > article > nav .smallhello .smallhello2 > div{
            position: relative;
            right: 3px;
            bottom: 2px;

        }
        .hello > article > nav .smallhello .smallhello2 .highlight{
            position: relative;
            bottom: 1.5px;
            font-weight: bold;
            color: #91BA15;
            
        }
        .hello > article > div .boards{
            position: absolute;
            width: 247.22px;
            height: 14px;
            left: 40px;
            top: 113px;
                    
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            white-space: nowrap;
                    
            color: #000000;
                    

        }


</style>

  
</head>
<body>
    <div id = "wrapper">
	<%@ include file="/WEB-INF/_header.jsp" %>
    <div class="subtopbg1">
        <img src="../img/sub_top_bg.jpg" alt="subtopbg1">
        <div class="subtoptit1"><img src="../img/sub_top_tit5.png" alt="subtoptit1"></div>
    </div>
   
    <main>
        <div class="hello">
            <article>
                <nav>
                    <img src="../img/sub_nav_tit_cate5_tit5.png" class="navtit1" alt="">
                    <div class="smallhello">                
                        <div class="smallhello2">
                            <div><img src="/img/sub_page_nav_ico.gif" alt=""></div> 
                          HOME > 커뮤니티 >&nbsp;<span class="highlight">자주묻는질문</span>
                       </div>
                </nav>
                <div>
                    <p class="boards">게시판 글목록/글쓰기/글보기/글수정 화면 출력</p>
                </div>
               
                
            </div>
            <aside>
                <div id="asidesize">
                    <div class="asidegate1"><img src="../img/sub_aside_cate5_tit.png" alt=""></div>
                    <div class="asidebgline"><img src="../img/sub_aside_bg_line.png" alt=""></div>
                <ul class="asidelnb">
                    <li>
                        <li class="lnb1"><a href="/farm/community/notice.do"><img id="lnb1" src="../img/sub_cate5_lnb1.png" alt="cate_lnb1"></a></li>
                        <li class="lnb2"><a href="/farm/community/menu.do"><img id="lnb2" src="../img/sub_cate5_lnb2.png" alt="cate_lnb2"></a></li>
                        <li class="lnb3"><a href="/farm/community/chef.do"><img id="lnb2" src="../img/sub_cate5_lnb3.png" alt="cate_lnb2"></a></li>
                        <li class="lnb4"><a href="/farm/community/qna.do"><img id="lnb2" src="../img/sub_cate5_lnb4.png" alt="cate_lnb2"></a></li>
                        <li class="lnb5"><a href="/farm/community/fnq.do"><img id="lnb2" src="../img/sub_cate5_lnb5_ov.png" alt="cate_lnb2"></a></li>
                        
                    </li>
                </ul>
                </div>
              </aside>
            </article>
        </div>
    </main>
     <%@ include file="/WEB-INF/_footer.jsp" %>
  </div>
  </body>
  </html>