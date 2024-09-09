<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>user/login.html</title>

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
            background-image: url('/farm/head_top_line.png')
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

        .login {
    position: relative;
    width: 360px;
    height: auto;
    border: 1px solid #cfded8;
    box-sizing: border-box;
    margin: 220px auto;
}

.login > form {
    
}
.login table {
    margin-left: 52px;
    margin-top: 30px;
    border-collapse: collapse;
    border-spacing: 0;
}
.login table tr {}
.login table tr > td {}
.login table img {width: 20px;}
.login table input {
    width: 162px;
    height: 22px;
    margin-left: 6px;
    margin-bottom: 4px;
    border: 1px solid #e4eaec;
    background-color: #f7f7f7;
}

.login .btnLogin {
    position: absolute;
    right: 50px;
    top: 30px;
    width: 60px;
    height: 52px;
    background-color: #fdfdfd;
    border: 1px solid #bebebe;
}

.login > div {
    width: 100%;
    height: 104px;
    background: #f5f6fa;
    border-top: 1px solid #cfded8;
    margin-top: 20px;
    padding: 20px;
    box-sizing: border-box;
}

.login > div > p {
    margin: 10px 0;
}

.login > div > a {
    float: right;
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
        background: url('/farm/footer_top_line.png');
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

	<script type="text/javascript">
		const success = ${requestScope.success};
	
		if(success == 100){
			alert('로그인에 실패했습니다.\n다시 한번 아이디, 비밀번호를 확인 하시길 바랍니다.');
		}else if(success == 101){
			alert('정상적으로 로그아웃 되었습니다.');
		}else if(success == 102){
			alert('먼저 로그인을 하셔야 합니다.');
		}	
	</script>
  
</head>
<body>
    <div id = "wrapper">
    <header>
        <div>
            <div class="htop"></div>
            <div class="top">
               
            </div>
            <div class ="logospace">
                <a href="#" class="logo"> <img src="/farm/img/logo.png" alt="logo" class = "headlog"></a>
                <a href="#" class="sale"><img src="/farm/img/head_txt_img.png" alt="htxt" class = "headlog2"></a>
                <p>
                    <a href="#">HOME | </a>
                    <a href="#">로그인 | </a>
                    <a href="#"> 회원가입 | </a>
                    <a href="#"> 고객센터 </a>
                </p>
            </div>
        </div>
        <div>
            <nav>
                <ul class = "navfont">
            <div><img src="/farm/img/head_menu_badge.png" class = "badge"></div>          
                 
                    <li><a href="#">팜스토리소개</a></li>
                    <li><a href="#">장보기</a></li>
                    <li><a href="#">농작물이야기</a></li>
                    <li><a href="#">이벤트</a></li>
                    <li><a href="#">커뮤니티</a></li>
                </ul>
            </nav>
        </div>
    </header>
   
    <main>
        <section class="login">
        <form action="/farm/user/login.do" method="post">
            <table border="0">
                <tr>
                    <td><img src="/farm/img/login_ico_id.png" alt="아이디"></td>
                    <td><input type="text" name="uid" placeholder="아이디 입력"></td>
                </tr>
                <tr>
                    <td><img src="/farm/img/login_ico_pw.png" alt="비밀번호"></td>
                    <td><input type="password" name="pass" placeholder="비밀번호 입력"></td>
                </tr>
            </table>
            <input type="submit" value="로그인" class="btnLogin">
        </form>
        <div>
            <h3>회원 로그인 안내</h3>
            <p>
                아직 회원이 아니시면 회원으로 가입하세요.
            </p>
            <a href="/farm/user/terms.do">회원가입</a>
        </div>
    </section>
    </main>
  
      <footer>
          <div>
              <div class="fline"></div>
              <img src="/farm/img/footer_logo.png" class="logo" alt="farmstoryfootlogo">
              <div id="Paragraph">
                  <p class="info1">
                      (주)팜스토리 / 사업자등록번호 123-45-67890 / 통신판매업신고 제 2013-부산진구-123호 / 벤처기업확인 서울지방중소기업청 제 012345678-9-01234호
                      등록번호 팜스토리01234 (2013.04.01) / 발행인 : 홍길동<br>
                      대표 : 김철학 / 이메일 : chhak0503@gmail.com / 전화 : 01) 234-5678 / 부산광역시 부산진구 부전동 123
                  </p>
                  <p class="info2">
                      copyrightⓒ 김철학(개발에반하다.) All rights reserved.
                  </p>
                  <p class="info3">
                      farmstory ver1.0.1
                  </p>
              </div>
          </div>
        
      </footer>
  </div>
  </body>
  </html>
  