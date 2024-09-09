<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>user/modify.html</title>

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
        height: 950px;
                
        background: #FFFFFF;

        margin: 0 auto;

        }

        /***********/
        /* header */
        header{
            width: 980px;
            height: 150px;
            margin : 0 auto;
        }

        /*top line*/
        header .htop{
            position: absolute;
            width: 980px;
            height: 14px;
            top: 1px;
            background-repeat: repeat;
            height: 10px;
            background-image: url('../img/head_top_line.png')
        }
        
        /*logospace 는 로고, 사이드로고, 로그인| 담고있음*/
        .logospace {
            width : 980px;
            height : 80px;
            position : relative;
        } 

        .logospace > p{
            position : absolute;
            height: 14px;
            right : 0;
            left: 787.45px;
            top: 15px;
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            color: #111111;
        }
        .logospace > p{
            position: absolute;
            width: 237.15px;
        }

        .headlog {
            position : absolute;
            left : 40%;
            top : 15px;
        }
        .headlog2 {
            position : absolute;
            right : 0px;
            top : 45px;
        }

        /**nav**/
        header nav {
            width : 100%;
            height : 50px;
            position :relative;
        }
        .navfont> li a {
            font-size :15px;
            font-weight: bolder;
        }
       header nav > ul {
            width :100%;
            height : 50px;
            display: inline-block;
            justify-content: space-around;
            padding: 10px 0;
        }
        
       header nav > ul > li {
        margin-left : 5px;
        float : left;
        min-width : 190px;
        height: 30px;
        margin-top :5px;
        border-top: 5px solid rgb(145, 142, 142);
        /*안의 글자 a들을 중앙으로 배치하는 방법*/
        position : flex;
        text-align: center;
        }
        /*장보기 뱃지*/
        .badge {
            position : absolute;
            margin-top :-10px;
            margin-left  : 310px;
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
            width: 980px;
            height: 663px;
            left: 470px;
            right: 470px;
            top: 142px;

        }

        .register {
		    width: 600px;
		    height: auto;            
		    margin: 65px auto;
		    overflow: hidden;
		}
		
		.register table {
		    width: 100%;
		    border-collapse: collapse;
		    border-spacing: 0;
		    border-top: 2px solid #111;
		    margin-bottom: 10px;
		}
		.register table caption {
		    text-align: left;
		    padding: 10px 0;
		    font-weight: bold;
		    box-sizing: border-box;
		}
		
		.register table tr > td {
		    padding: 6px 12px;
		    border: 1px solid #e9e9e9;
		    box-sizing: border-box;
		}
		.register table tr > td:nth-child(1) {
		    width: 105px;
		    background: #f5f8f9;
		}
		
		.register table tr .nickInfo {margin-bottom: 6px;}
		.register table input {
		    width: 162px;
		    height: 22px;
		    border: 1px solid #e4eaec;
		    background: #f7f7f7;
		    text-indent: 6px;
		}
		
		.register table input[name=addr1] {
		    display: block;
		    width: 360px;
		    margin: 4px 0;
		}
		.register table input[name=addr2] {
		    display: block;
		    width: 360px;
		}
		.register table button {
		    border: none;
		    vertical-align: bottom;
		}
		.register > form > div {
		    float: right;
		}
		
		.register > form .auth {
			display: none;
			margin-top: 4px;
		}



        /***********/
        /* footer */
        footer {
         /* Footer */

         box-sizing: border-box;
                
        position: absolute;
        height: 120px;
        left: 470px;
        right: 470px;
        top: 800px;


        }

        footer > div {
            float :right;
            width :100%;
            height : 120px;
            
        }

    /*footer topline*/
      footer .fline{
        position: relative;
        width: 980px;
        background-repeat: repeat;
        height: 10px;
        background: url('../img/footer_top_line.png');
      }
      /*info3개 들음*/
      #Paragraph {
        float : right;
        margin-top:10px;
        position: relative;
        height: 95px;
        width : 75%;
        overflow : hidden;
       }
        .info1{

        position: absolute;
        left : 0;
        top : 0;
         width: 709.68px;
         height: 54px;
         font-family: 'Inter', sans-serif;
         font-style: normal;
         font-weight: 300;
         font-size: 10.6562px;
         line-height: 18px;
         display: flex;
         align-items: center;
         color: #585858;
        }
    
         footer > div .info2{
            position: absolute;
            left : 0;
            bottom : 25px;
        width: 275.5px;
        height: 14px;
        font-family: 'Inter', sans-serif;
        font-style: normal;
        font-weight: 400;
        font-size: 11.25px;
        line-height: 14px;
        display: flex;
        align-items: center;
        color: #888888;
    }
        footer > div .info3{
            position: absolute;
            right : 5px;
            bottom : 0;
        width: 89.18px;
        height: 14px;
        font-family: 'Inter', sans-serif;
        font-style: normal;
        font-weight: 400;
        font-size: 10.6875px;
        line-height: 13px;
        display: flex;
        align-items: center;
        color: #888888;
    }
</style>
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<!--  <script src="/farm/js/validation.js"></script> -->
	<script src="/farm/js/postcode.js"></script>
	<script>
		window.onload = function() {
			
			const btnWithdraw = document.getElementsByClassName('btnWithdraw')[0];
			
			btnWithdraw.addEventListener('click', function() {
				
				console.log('click!');
				
				const result = confirm('정말 탈퇴하시겠습니까?');

                if(result){
                    alert('탈퇴 처리되었습니다.');
                    return true;
                }else{
                    alert('탈퇴 처리가 실패했습니다.');
                    return false;
                }
				
			})
		}
	</script>
  
</head>
<body>
    <div id = "wrapper">
    <%@ include file="/WEB-INF/_header.jsp" %>
    <main>
        <section class="register">
            <form action="/farm/user/modify.do" method="post">
                <table border="1">
                    <caption>개인정보 수정</caption>
                    <tr>
                        <td>아이디</td>
                        <td>
                            <input type="text" name="uid" value="${user.uid}" readonly/>
                            <button type="button" id="btnCheckUid"></button>
                            <span class="resultId"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>비밀번호</td>
                        <td>
                            <input type="password" name="pass1" value="${user.pass}"/>                            
                        </td>
                    </tr>
                    <tr>
                        <td>비밀번호 확인</td>
                        <td>
                            <input type="password" name="pass2" value="${user.pass}"/>
                            <span class="resultPass"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>이름</td>
                        <td>
                            <input type="text" name="name" value="${user.name}"/>
                            <span class="resultName"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>별명</td>
                        <td>
                            <p>공백없이 한글, 영문, 숫자만 입력가능</p>
                            <input type="text" name="nick" value="${user.nick}"/>
                            <span class="resultNick"></span>                            
                        </td>
                    </tr>
                    <tr>
                        <td>E-Mail</td>
                        <td>
                           <input type="email" name="email" value="${user.email}"/>
                           <button type="button" id="btnSendEmail"><img src="../img/chk_auth.gif" alt="인증번호 받기"/></button>
                           <span class="resultEmail"></span>
                           <div class="auth">
                               <input type="text" name="auth" placeholder="인증번호 입력"/>
                               <button type="button" id="btnAuthEmail"><img src="../img/chk_confirm.gif" alt="확인"/></button>
                           </div>
                       </td>
                    </tr>
                    <tr>
                        <td>휴대폰</td>
                        <td>
                            <input type="text" name="hp" value="${user.hp}" minlength="13" maxlength="13" />
                            <span class="resultHp"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>주소</td>
                        <td>
                            <div>
                                <input type="text" name="zip" id="zip" value="${user.zip}" readonly/>                                
                                <button type="button" class="btnZip" onclick="postcode()"><img src="../img/chk_post.gif" alt=""></button>
                            </div>                            
                            <div>
                                <input type="text" name="addr1" id="addr1" value="${user.addr1}" readonly/>
                            </div>
                            <div>
                                <input type="text" name="addr2" id="addr2" value="${user.addr2}"/>
                            </div>
                        </td>
                    </tr>
                </table>
    
                <div>
                    <a href="/farm/index.do" class="btnCancel">취소</a>
                    <input type="submit"   class="btnModify" value="수정"/>
                </div>    
            </form>
            <a href="/farm/user/delete.do?uid=${user.uid}" class="btnWithdraw">탈퇴하기</a>
        </section>
    </main>
	<%@ include file="/WEB-INF/_footer.jsp" %>
  </div>
  </body>
  </html>
  