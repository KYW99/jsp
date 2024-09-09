<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원목록</title>
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
             height: auto;
             position: relative;
        } 
        .user_reg {
            width: 68px;
            height: 50px;
            font-size: 17px;
            line-height: 50px;
            font-weight: bold;
            color: #3f3f3f;
        }
            
        table {
            width: 784px;
            height: 86px;
            border-top: 2px solid black;
            border-collapse: collapse;
        }
        th{
            background-color: #FBFBFB;
            height: 42.5px;
        }
        td {
            height: 42px;
            border-bottom: 1px dotted #999999;
        }
        th:nth-child(1){width: 41.36px;}
        
        td{
            text-align: center;
        }
        .user_role{
            width: 28px;
            height: 18px;
            background-color: #EFEFEF;
            border: 1px solid #767676;
            text-indent: 5px;
        }
        .page_box{
            width: 100%;
            height: 35px;
            text-align: center;
            font-weight: bold;
            margin-top: 15px;
        }
        .page_box span {
            font-weight: 500;
        }
        .page_box .underline{
            border-bottom: 1px solid #111;
            font-weight: bold;
        }
        .page_box::after{content: ">";}
        .page_box::before{content: "<";}

    </style>
</head>
<body>
    <div id = "wrapper">
        <%@ include file="/WEB-INF/admin/_header.jsp" %>
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
                        <a href="/farm/admin/order/order.do" class="contents">┗ 주문목록</a>
                    </li>
                    <li>
                        <p class="tit">회원관리</p>
                        <a href="/farm/admin/user/user.do" class="contents">┗ 회원목록</a>
                    </li>
                </ul>
            </aside>
            
            <section>
                <h3 class="user_reg">회원목록</h3>
                <article class="h1">
                    <table>
                        <thead>    
                            <tr>
                                <th><input type="checkbox"></th>
                                <th>아이디</th>
                                <th>이름</th>
                                <th>별명</th>  
                                <th>이메일</th>  
                                <th>휴대폰</th>
                                <th>등급</th>
                                <th>가입일</th>
                                <th>확인</th>
                            </tr> 
                        </thead>    
                        <tbody>      
                            <tr> 
                                <td><input type="checkbox"></td>
                                <td>a101</td>
                                <td>김유신</td>
                                <td>유신101</td>
                                <td>yusin101@naver.com</td>
                                <td>010-1234-1001</td>
                                <td><input type="text" value="2" class="user_role" readonly></td>
                                <td>2023-01-01 13:06:14</td>
                                <td>[상세확인]</td>
                            </tr>
                            <tr> 
                                <td><input type="checkbox"></td>
                                <td>a102</td>
                                <td>김춘추</td>
                                <td>춘추102</td>
                                <td>chunchu102@naver.com</td>
                                <td>010-1234-1002</td>
                                <td><input type="text" value="2" class="user_role" readonly></td>
                                <td>2023-01-01 13:06:14</td>
                                <td>[상세확인]</td>
                            </tr>
                            <tr> 
                                <td><input type="checkbox"></td>
                                <td>a103</td>
                                <td>장보고</td>
                                <td>보고103</td>
                                <td>bogo103@naver.com</td>
                                <td>010-1234-1003</td>
                                <td><input type="text" value="2" class="user_role" readonly></td>
                                <td>2023-01-01 13:06:14</td>
                                <td>[상세확인]</td>
                            </tr>
                        </tbody>    
                    </table>
                 </article>
                <div class="page_box">
                    <a href="#">
                        <span class="underline">[1]</span>
                        <span>[2]</span>
                        <span>[3]</span>
                        <span>[4]</span>
                        <span>[5]</span>
                    </a>
                </div>
            </section>
        </main>
		<%@ include file="/WEB-INF/admin/_footer.jsp" %>
    </div>
</body>
</html>