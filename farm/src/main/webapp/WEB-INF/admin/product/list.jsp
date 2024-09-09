<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품목록</title>
    <link rel="stylesheet" href="/farm/css/admin/product/list.css">
    
   <script>
   
        function deleteSelected() {
            // 선택된 체크박스들 가져오기
            var checkboxes = document.querySelectorAll('input[name="prodid"]:checked');
            var ids = [];
            checkboxes.forEach(function(checkbox) {
                ids.push(checkbox.value);
            });

            if (ids.length > 0) {
                // IDs를 쿼리 문자열로 변환
                var query = ids.join(',');

                // 삭제 요청을 서버로 전송
                window.location.href = '/farm/admin/product/delete.do?ids=' + encodeURIComponent(query);
            } else {
                alert('삭제할 항목을 선택하세요.');
            }
        }
        function toggleCheckboxes(source) {
            var checkboxes = document.querySelectorAll('input[name="prodid"]');
            checkboxes.forEach(function(checkbox) {
                checkbox.checked = source.checked;
            });
        }
    </script>
	</head>
<body>
    <div id = "wrapper">
        
        <%@ include file="../_header.jsp" %>

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
                <h4 class="product_list">상품목록</h4>
                <article class="h1">
                    <table>
                        <tbody>      
                            <tr>
                                 <th><input type="checkbox" id="select-all" onclick="toggleCheckboxes(this)"></th>
                                <th>사진</th>
                                <th>상품번호</th>  
                                <th>상품명</th>  
                                <th>구분</th>
                                <th>가격</th>
                                <th>재고</th>
                                <th>등록일</th>
                            </tr>
                            
                            <c:forEach var="product" items="${products}">
                            <tr>
                                <td><input type="checkbox" name="prodid" value="${product.prodid}"></td>
                                <td><data value="">
            							<img src="/farm/upload/${product.pro_img_list}" alt="${product.proname}">
       								 </data>
                                </td>
                                <td>${product.prodid}</td>
                                <td>${product.proname}</td>
                                <td>${product.category}</td>
                                <td>${product.price}원</td>
                                <td>${product.stock}</td>
                                <td>${product.rdate}</td>
               
                            </tr>
                          	  <c:set var="pageStartNum" value="${pageStartNum-1}"/>
                            </c:forEach>
                        </tbody>
                    </table>
                    <div id="container">
                    	<a href="javascript:void(0);" class="select_del" onclick="deleteSelected()">선택삭제</a>
                        <a href="#" class="reg">상품등록</a>
                    </div>
                   <div class="page_box">
    <c:if test="${pageGroup.start > 1}">
        <a href="/farm/admin/product/list.do?pg=${pageGroup.start-1}" class="prev">이전</a>
    </c:if>
    <c:forEach var="i" begin="${pageGroup.start}" end="${pageGroup.end}">
        <a href="/farm/admin/product/list.do?pg=${i}" class="num ${currentPage == i ? 'current':'off'}">${i}</a>
    </c:forEach>
    <c:if test="${pageGroup.end < lastPageNum}">
        <a href="/farm/admin/product/list.do?pg=${pageGroup.end+1}" class="next">다음</a>
    </c:if>
</div>
                </article>
            </section>
        </main>
		<%@ include file="../_footer.jsp" %>
    </div>
</body>
</html>