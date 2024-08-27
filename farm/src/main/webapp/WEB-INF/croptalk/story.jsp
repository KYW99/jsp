<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>croptalk/story.html</title>

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
            height: 25px;
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
            height: 14px;
            height: 14px;
            left: -27px;
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





        /***********/
        /* footer */
        footer {
            box-sizing: border-box;
            position: absolute;
            margin : 0 auto;
            width : 980px;
            height: 130px;
            top: 1010px;
            left: 470px;
            right: 470px;
            background-color: #F8F9FA; /* 배경색 추가 */
            
            overflow :hidden
        }/* Footer */


        footer > div {
            float :right;
            width :100%;
            height : 120px;
            
        }
    #listcontainer{
            width : 100%;
            height: 500px;
            position : absolute;
            top : 80px;
        }
        .list table {
            width: 95%;
            border-top: 2px solid #111;
            border-collapse: collapse;
            border-spacing: 0;
            margin-top:10px;
            margin-left : 40px 
        }

        .list table th {
            padding: 12px;
            border-top: 1px solid #d1dee2;
            border-bottom: 1px solid #d1dee2;
            background: #dae9ad;
            color: #383838;
        }
        .list table td {    
            padding: 12px 6px;
            border-top: 1px solid #e9e9e9;
            border-bottom: 1px solid #e9e9e9;    
        }
        .list table tr > td:nth-child(1) {width:  50px; text-align: center; background: #fff;}
        .list table tr > td:nth-child(2) {width:  auto; text-align: left;}
        .list table tr > td:nth-child(3) {width: 100px; text-align: center;}
        .list table tr > td:nth-child(4) {width: 100px; text-align: center;}
        .list table tr > td:nth-child(5) {width:  50px; text-align: center;}
        button {
        justify-content: center;
        border: 1px solid #BEBEBE;
        background-color: white;
        cursor: pointer;
    }
        .btnWrite{
        width : 54px; 
        height: 35px; 
        background-color: #f3fbda; 
        border : 1px solid 91BA15;
        float: right;
        margin-top : 10px;

        color : black;
    }
        /*************************************************************************************************/
        /*************************************************************************************************/
        /********************************************** main  ********************************************/
        /*************************************************************************************************/
        /*************************************************************************************************/
        

</style>

  
</head>
<body>
    <div id = "wrapper">
	<%@ include file="/WEB-INF/_header.jsp" %>
    <div class="subtopbg1">
        <img src="../img/sub_top_bg.jpg" alt="subtopbg1">
        <div class="subtoptit1"><img src="../img/sub_top_tit3.png" alt="subtoptit1"></div>
    </div>
   
    <main>
        <div class="hello">
            <article>
                <nav>
                    <img src="../img/sub_nav_tit_cate3_tit1.png" class="navtit1" alt="">
                    <div class="smallhello">                
                        <div class="smallhello2">
                            <div><img src="/img/sub_page_nav_ico.gif" alt=""></div> 
                          HOME > 농작물이야기 >&nbsp;<span class="highlight">농작물이야기</span>
                    </div>
                </nav>
          
   <div id="listcontainer">
                        <section class="list">
                            <article>
                                <table border= "0">
                                    <tr>
                                        <th>번호</th>
                                        <th>제목</th>
                                        <th>글쓴이</th>
                                        <th>날짜</th>
                                        <th>조회</th>
                                    </tr>
                                <c:forEach var="article" items="${articles}">
                                    <tr>
                                        <!-- 여기 순서번호 수정 해야함 -->
                                        <td>1</td>
                                        <td>제 텃밭을 소개합니다.</td>
                                        <td>황소</td>
                                        <td>2024/08/26</td>
                                        <td>0</td>
                                    </tr>
                                </c:forEach>
                                </table>
                            </article>
                            
                            <!-- 글쓰기 버튼 -->
                            <button type = "button" class = "btnWrite">글쓰기</button>
                        </section>
                   
                </div>
                
            </div>
            <aside>
                <div id="asidesize">
                    <div class="asidegate1"><img src="../img/sub_aside_cate3_tit.png" alt=""></div>
                    <div class="asidebgline"><img src="../img/sub_aside_bg_line.png" alt=""></div>
                <ul class="asidelnb">
                    <li>
                          <li class="lnb1"><a href="story.do"><img id="lnb1" src="../img/sub_cate3_lnb1_ov.png" alt="cate_lnb1"></a></li>
                        <li class="lnb2"><a href="grow.do"><img id="lnb2" src="../img/sub_cate3_lnb2.png" alt="cate_lnb2"></a></li>
                        <li class="lnb3"><a href="school.do"><img id="lnb2" src="../img/sub_cate3_lnb3.png" alt="cate_lnb2"></a></li>

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