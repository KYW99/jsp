<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>market/list.html</title>
	<link rel="stylesheet" href="/farm/css/market/list.css">
</head>
<body>
    <div id = "wrapper">
<%@ include file="/WEB-INF/_header.jsp" %>
    <div class="subtopbg1">
        <img src="/farm/img/sub_top_bg.jpg" alt="subtopbg1">
        <div class="subtoptit1"><img src="/farm/img/sub_top_tit2.png" alt="subtoptit1"></div>
    </div>
   
    <main>
        <div class="hello">
            <article>
                <nav>
                    <img src="/farm/img/sub_nav_tit_cate2_tit1.png" class="navtit1" alt="">
                    <div class="smallhello">                
                        <div class="smallhello2">
                            <div><img src="/img/sub_page_nav_ico.gif" alt=""></div> 
                          HOME > 장보기 >&nbsp;<span class="highlight">장보기</span>
                       </div>
                    </div>
                </nav>
                <a href="#"><span class="highlight2">전체(5)</span>&nbsp;| 과일 | 야채 | 곡류</a>
                <table>
        <tbody>
            <tr>
              
                <th>이미지</th>
                <th>종류</th>
                <th>상품명</th>
                <th>할인</th>
                <th>포인트</th>
                <th>판매가격</th>
            </tr>
           <c:forEach var="product" items="${products}">
                                <tr class="cartproduct">
                                    <td>
                                        <a href="/farm/market/view.do?prodid=${product.prodid}">
                                            <img src="/farm/upload/${product.pro_img_list}" alt="${product.proname}">
                                        </a>
                                    </td>
                                    <td>${product.category}</td>
                                    <td>
                                        <a href="/farm/market/view.do?prodid=${product.prodid}">
                                            ${product.proname}
                                        </a>
                                    </td>
                                    <td>${product.discount}</td>
                                    <td>${product.points}</td>
                                    <td>${product.price}원</td>
                              </tr>
            </c:forEach>
        </tbody>
    </table>
     <div class="page_box">
    <c:if test="${pageGroup.start > 1}">
        <a href="/farm/market/list.do?pg=${pageGroup.start-1}" class="prev">이전</a>
    </c:if>
    <c:forEach var="i" begin="${pageGroup.start}" end="${pageGroup.end}">
        <a href="/farm/market/list.do?pg=${i}" class="num ${currentPage == i ? 'current':'off'}">${i}</a>
    </c:forEach>
    <c:if test="${pageGroup.end < lastPageNum}">
        <a href="/farm/market/list.do?pg=${pageGroup.end+1}" class="next">다음</a>
    </c:if>
	</div>
                
               
            </div>
            <aside>
                <div id="asidesize">
                    <div class="asidegate1"><img src="/farm/img/sub_aside_cate2_tit.png" alt=""></div>
                    <div class="asidebgline"><img src="/farm/img/sub_aside_bg_line.png" alt=""></div>
                <ul class="asidelnb">
                    <li>
                        <li class="lnb1"><a href="#"><img id="lnb1" src="/farm/img/sub_cate2_lnb1_ov.png" alt="cate_lnb1"></a></li>
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
  