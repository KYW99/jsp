<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품등록</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            font: normal 12px 'Inter';
        }

        ul, ol {list-style: none;}
        a {text-decoration: none; color: #111;}
        input, textarea {outline: none;}

        #wrapper {
            width : 100%;
            height : 743px;
            margin : 0 auto;
        }

        /************************ Header ************************/
        header{
            position: relative;
            width: 980px;
            height: 60px;
            left: 470px;
            top: 0px;
            background: url(../img/admin/admin_bg.jpg);
        }

        header > a {
            position: absolute;
            width: 170px;
            height: 32px;
            left: 12px;
            top: 12px;
            background: url(../img/admin/admin_logo.jpg) no-repeat;
        }

        header > span {
            width: 149px;
            height: 14px;
            position: absolute;
            top: 13px;
            left: 819px;
            font-size: 11px; /*원래는 12로 변경해야 함*/
            color: white;
            line-height: 14px;
        }

        /************************ Main ************************/
        main{
            position: absolute;
            width: 980px;
            height: 644px;
            left: 470px;
            top: 60px;
        }

        /************************ Aside ************************/
        aside{
            position: absolute;
            width: 176px;
            height: 400px;
            left: 0px;
            top: 0px;
        }

        .main_function {
            width: 156px;
            height: 30px;
            position: absolute;
            top: 10px;
            left: 10px;
            border: 1px solid #CCCCCC;
            border-radius: 20px;
            background: #E5E5E5;
        }

        aside > h3 > p {
            width: 56px;
            height: 15px;
            position: absolute;
            top: 7px;
            left: 21px;
            font-size: 14px;
            font-weight: bold;
            line-height: 17px;
        }

        .aside-list {
            width: 156px;
            height: 234px;
            position: absolute;
            top: 40px;
            left: 10px;
        }

        .tit {
            width: 48px;
            height: 14px;
            position: absolute;
            top: 4px;
        }

        li:nth-child(1) {
            width: 124px;
            height: 72px;
            position: absolute;
            top: 26px;
            left: 16px;
        }
        li:nth-child(2) {
            width: 124px;
            height: 50px;
            position: absolute;
            top: 108px;
            left: 16px;
        }
        li:nth-child(3) {
            width: 124px;
            height: 50px;
            position: absolute;
            top: 168px;
            left: 16px;
        }

        .contents {
            width: 124px;
            height: 22px;
            position: absolute;
            top: 28px;
        }

        .contents1 {
            width: 124px;
            height: 22px;
            position: absolute;
            top: 28px;
        }

        .contents2 {
            width: 124px;
            height: 22px;
            position: absolute;
            top: 50px;
        }

        li > p, li > a {
            font-weight: bold;
        }

        /************************ section ************************/
       section{
            width: 804px;
            height: 658px;
            position: absolute;
            left: 176px;
        }

         section > article {
             width: 784px;
             height: 193px;
             position: relative;
            } 
            
            table {
                width: 784px;
                height: 170px;
                border-top: 2px solid black;
            }

            th, td {
                border: 0px 0px 1px 0px;
                border-bottom: 1px dotted;
                height: 42px;
            }
            .plus {
                 float: right;
                margin-top: -30px;
            }
          

        /************************ Footer ************************/
        footer{
            position: absolute;
            width: 980px;
            height: 39px;
            left: 470px;
            right: 470px;
            top: 704px;

            background: #353535;
        }

        .copyright{
            float: left;
            margin-top: 8px;
            color: white;
            font-size: 15px;
            
        }

    </style>
</head>
<body>
    <div id = "wrapper">
        <header>
            <a href="#"></a>
            <span>HOME | 로그아웃 | 고객센터</span>
        </header>

        <main>
            <aside>
                <h3 class="main_function"><p>주요기능</p></h3>
                <ul class="aside-list">
                    <li>
                        <p class="tit">상품관리</p>
                        <a href="/farm/admin/product/list.do" class="contents1">┗ 상품목록</a><br>
                        <a href="/farm/admin/product/register.do" class="contents2">┗ 상품등록</a>
                    </li>
                    <li>
                        <p class="tit">주문관리</p>
                        <a href="#" class="contents">┗ 주문목록</a>
                    </li>
                    <li>
                        <p class="tit">회원관리</p>
                        <a href="#" class="contents">┗ 회원목록</a>
                    </li>
                </ul>
            </aside>

            <section>
                <h4>관리자 메인</h4>
                <h4>상품현황</h4>
                <div class="plus">+더보기</div>
                <article class="h1">
                <table>
                    <thead>    
                        <tr>
                                <th>상품번호</th>
                                <th>상품명</th>
                                <th>구분</th>  
                                <th>가격</th>  
                                <th>재고</th>
                                <th>등록일</th>
                        </tr> 
                    </thead>    
                    <tbody>      
                            <tr> 
                                <td>1011</td>
                                <td>사과<br>500g</td>
                                <td>과일</td>
                                <td>4000원</td>
                                <td>100</td>
                                <td>2023-01-01</td>
                            </tr>
                            <tr> 
                                <td>1011</td>
                                <td>사과<br>500g</td>
                                <td>과일</td>
                                <td>4000원</td>
                                <td>100</td>
                                <td>2023-01-01</td>
                            </tr>
                            <tr> 
                                <td>1011</td>
                                <td>사과<br>500g</td>
                                <td>과일</td>
                                <td>4000원</td>
                                <td>100</td>
                                <td>2023-01-01</td>
                            </tr>
                        </tbody>    
                    </table>
                 </article>
    
            <h4>주문현황</h4>
            <article class="h1">
                <div class="plus">+더보기</div>
                <table>
                    <thead>
                        <tr class="th">
                            <th>주문번호</th>
                            <th>상품명</th>
                            <th>판매가격</th>
                            <th>수량</th>
                            <th>배송비</th>
                            <th>합계</th>
                            <th>주문자</th>
                            <th>주문일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="td">
                            <td>1011</td>
                            <td>사과 500g</td>
                            <td>4000원</td>
                            <td>2개</td>
                            <td>3000원</td>
                            <td>8000원</td>
                            <td>홍길동</td>
                            <td>2023-01-01</td>
                        </tr>
                        <tr class="td">
                            <td>1011</td>
                            <td>사과 500g</td>
                            <td>4000원</td>
                            <td>2개</td>
                            <td>3000원</td>
                            <td>8000원</td>
                            <td>홍길동</td>
                            <td>2023-01-01</td>
                        </tr>
                        <tr class="td">
                            <td>1011</td>
                            <td>사과 500g</td>
                            <td>4000원</td>
                            <td>2개</td>
                            <td>3000원</td>
                            <td>8000원</td>
                            <td>홍길동</td>
                            <td>2023-01-01</td> 
                        </tr>
                    </tbody>
                </table>
            </article>
    
            <h4>회원현황</h4>
            <article class="h1">
                <div class="plus">+더보기</div>
                <table>
                    <thead>
                        <tr class="th">
                            <th>회원아이디</th>
                            <th>이름</th>
                            <th>닉네임</th>
                            <th>휴대폰</th>
                            <th>이메일</th>
                            <th>등급</th>
                            <th>회원가입일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="td">
                            <td>a101</td>
                            <td>김유신</td>
                            <td>유신<br>123</td>
                            <td>010-1234-1001</td>
                            <td>yusin123@naver.com</td>
                            <td>2</td>
                            <td>2023-01-01</td>
                        </tr>
                        <tr class="td">
                            <td>a101</td>
                            <td>김유신</td>
                            <td>유신<br>123</td>
                            <td>010-1234-1001</td>
                            <td>yusin123@naver.com</td>
                            <td>2</td>
                            <td>2023-01-01</td>
                        </tr>
                        <tr class="td">
                            <td>a101</td>
                            <td>김유신</td>
                            <td>유신<br>123</td>
                            <td>010-1234-1001</td>
                            <td>yusin123@naver.com</td>
                            <td>2</td>
                            <td>2023-01-01</td>
                        </tr>
                    </tbody>
                </table>
            </article>
            </section>
        </main>

        <footer>
            <p class=copyright>
                Copyright(C)Farmstory All rights reserved.FARMSTORY ADMINISTRATOR Version 1.0.1
            </p>
        </footer>
    </div>
</body>
</html></html>