<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
<script src="/farm/js/validation.js"></script>

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
            background: url(/farm/img/admin/admin_bg.jpg);
        }

        header > a {
            position: absolute;
            width: 170px;
            height: 32px;
            left: 12px;
            top: 12px;
            background: url(/farm/img/admin/admin_logo.jpg) no-repeat;
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
            height: 644px;
            position: absolute;
            left: 176px;
        }

        section > article {
            width: 784px;
            height: 577px;
            position: relative;
        }

        .product_reg {
            width: 68px;
            height: 19px;
            position: absolute;
            top: 12px;
            left: 10px;
            font-size: 17px;
            line-height: 21px;
            font-weight: bold;
            color: #3f3f3f;
        }

        article > form {
            width: 784px;
            height: 577px;
            position: absolute;
            top: 45px;
            left: 10px;
        }

        td {
            border-bottom: 1px dotted gray;
            padding: 10px;
        }

        .tdAll {
            width: 80px;
        }

        table {
            width: 784px;
            height: 534px;
            border-top: 2px solid black;
        }

        #option {
            appearance: none;
            width: 44px;
            height: 18px;
            background-color: #efefef;
            padding-left: 2px;
        }

        .td-file > p {
            line-height: 25px;
        }

        label[for="product_image_list"] ,label[for="product_image_info"] , label[for="product_image_desc"]{
            position: relative;
        }

        #product_image_list, #product_image_info, #product_image_desc {
            width: 70px;
            height: 14px;
            position: absolute;
            top: 3px;
            left: 84px;
            border: none;
            background: transparent;
            padding-left: 5px;
            font-size: 10px;
        }
           #input-text {
            width: 70px;
            height: 14px;
            position: absolute;
            top: 3px;
            left: 84px;
            border: none;
            background: transparent;
            padding-left: 5px;
            font-size: 10px;
        }

        input[type="file"] {
            
        }

      

        .etc {
            width: 157px;
            height: 32px;
            border: 1px solid #767676;
            box-sizing: border-box;
        }

        .reset {
            width: 50px;
            height: 28px;
            position: absolute;
            top: 547px;
            left: 328px;
            background-color: white;
            border: 1px solid #cccccc;
            border-radius: 20px;
            display: flex;
            align-items:center;
            justify-content:center;
        }

        .btnSubmit{
            width: 74px;
            height: 31px;
            position: absolute;
            top: 546px;
            left: 381px;
            background-color: #efefef;
            border: 1px solid #cccccc;
            border-radius: 20px;
            display: flex;
            align-items:center;
            justify-content:center;
        }

        form > a {
           text-align: center;
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

<main>
    <aside>
        <h3 class="main_function"><p>주요기능</p></h3>
        <ul class="aside-list">
            <li>
                <p class="tit">상품관리</p>
                <a href="#" class="contents1">┗ 상품목록</a><br>
                <a href="#" class="contents2">┗ 상품등록</a>
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
        <nav>
            <h3 class="product_reg">상품등록</h3>
        </nav>
        <article>
            <form id="product-form" action="/farm/admin/product/register.do" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">
                <table>
                    <tbody>
                        <tr>
                            <td class="td-1 tdAll">상품명</td>
                            <td class="td-1"><input type="text" name="proname" id="proname"></td>
                        </tr>
                        <tr>
                            <td class="tdAll">종류</td>
                            <td>
                                <select name="category" id="category">
                                    <option value="">선택</option>
                                    <option value="과일">과일</option>
                                    <option value="곡류">곡류</option>
                                    <option value="야채">야채</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdAll">가격</td>
                            <td><input type="text" id="price" name="price"></td>
                        </tr>
                        <tr>
                            <td class="tdAll">포인트</td>
                            <td><input type="text" id="points" name="points" placeholder="0" readonly>포인트는 가격의 1%</td>
                        </tr>
                        <tr>
                            <td class="tdAll">할인</td>
                            <td>
                                <select name="discount" id="discount">
                                    <option value="">선택</option>
                                    <option value="5%">5%</option>
                                    <option value="10%">10%</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdAll">배송비</td>
                            <td>
                                <input type="radio" name="delivery_cost" value="3000">3,000원&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="tdAll">재고</td>
                            <td><input type="text" name="stock" id="stock"></td>
                        </tr>
                        <tr>
                            <td class="tdAll">상품이미지</td>
                            <td class="td-file">
                              <p>상품목록 이미지(약 120 x 120)</p>
                               
                                    <input type="file" name="product_image_list" >
                                  
                              
                                <p>기본정보 이미지(약 240 x 240)</p>
                               
                                    <input type="file" name="product_image_info" >
                                 
                                <p>상품설명 이미지(약 750 x Auto)</p>
                               
                                    <input type="file" name="product_image_desc" >
                                  	
                            </td>
                        </tr>
                        <tr>
                            <td class="tdAll">기타</td>
                            <td><input type="text" class="etc" name="etc"></td>
                        </tr>
                    </tbody>
                </table>
                <a href="#" class="reset">취소</a>
                <input type="submit" class="btnSubmit" value="상품등록">
            </form>
        </article>
    </section>
</main>

<%@ include file="../_footer.jsp" %>
