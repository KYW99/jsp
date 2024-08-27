<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>market/list.html</title>

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
        height: 1214px;
                
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
            width: 980px;
            height: 920.75px;
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
            height: 758px;
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
            width: 69px;
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
            height: 14px;
            height: 14px;
            left: 42px;
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
        .hello > article > a {
            position: absolute;
            width: 141.42px;
            height: 14px;
            left: 40px;
            top: 113px;
                    
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 11.8125px;
            line-height: 14px;
            display: flex;
            align-items: center;
                    
            color: #777777;
            white-space: nowrap;
        }
        .hello > article > a .highlight2{
            color: #111111;

        }
        
        .hello > article .cart{
            box-sizing: border-box;

            position: absolute;
            height: 564px;
            left: 40px;
            right: 0px;
            top: 139px;

            border-width: 1px 0px;
            border-style: solid;
            border-color: #111111;
            overflow: hidden;
        }

        .hello > article .cart > .carthead{
            box-sizing: border-box;
                    
            position: absolute;
            width: 762px;
            height: 38px;
            left: 0px;
            top: calc(50% - 38px/2 - 262.5px);
                    
            border-bottom: 1px solid #EEEEEE;

        }
        .hello > article .cart > .cartbody{
            position: absolute;
            width: 762px;
            height: 525px;
            left: 0px;
            top: calc(50% - 525px/2 + 19px);

            
        }

        .hello > article .cart > .carthead > li:nth-child(1){

            box-sizing: border-box;

            position: absolute;
            width: 100px;
            height: 38px;
            left: 0px;
            top: calc(50% - 38px/2);

            background: #E5ECEF;
            border-bottom: 1px solid #D1DEE2;


        }

        .hello > article .cart > .carthead > li:nth-child(1) .image{
            position: absolute;
            width: 36.2px;
            height: 14px;
            left: 32px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #000000;

        }
        .hello > article .cart > .carthead > li:nth-child(2){

            box-sizing: border-box;

            position: absolute;
            width: 76.19px;
            height: 38px;
            left: 100px;
            top: calc(50% - 38px/2);

            background: #E5ECEF;
            border-bottom: 1px solid #D1DEE2;

        }
        .hello > article .cart > .carthead > li:nth-child(2) .kind{
            position: absolute;
            width: 24.2px;
            height: 14px;
            left: 26.09px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #000000;

        }
        .hello > article .cart > .carthead > li:nth-child(3){

            box-sizing: border-box;

            position: absolute;
            width: 311.5px;
            height: 38px;
            left: 176.19px;
            top: calc(50% - 38px/2);

            background: #E5ECEF;
            border-bottom: 1px solid #D1DEE2;

        }
        .hello > article .cart > .carthead > li:nth-child(3) .Productname{
            position: absolute;
            width: 36.2px;
            height: 14px;
            left: 137.75px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #000000;

        }
        .hello > article .cart > .carthead > li:nth-child(4){
            box-sizing: border-box;

            position: absolute;
            width: 91.44px;
            height: 38px;
            left: 487.69px;
            top: calc(50% - 38px/2);

            background: #E5ECEF;
            border-bottom: 1px solid #D1DEE2;


        }
        .hello > article .cart > .carthead > li:nth-child(4) .discount{
            position: absolute;
            width: 24.2px;
            height: 14px;
            left: 33.72px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #000000;
        }
        .hello > article .cart > .carthead > li:nth-child(5){
            box-sizing: border-box;

            position: absolute;
            width: 91.44px;
            height: 38px;
            left: 579.13px;
            top: calc(50% - 38px/2);

            background: #E5ECEF;
            border-bottom: 1px solid #D1DEE2;



        }
        .hello > article .cart > .carthead > li:nth-child(5) .point{
            position: absolute;
            width: 36.2px;
            height: 14px;
            left: 27.71px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #000000;

        }
        .hello > article .cart > .carthead > li:nth-child(6){
            box-sizing: border-box;
                    
            position: absolute;
            width: 91.44px;
            height: 38px;
            left: 670.56px;
            top: calc(50% - 38px/2);
                    
            background: #E5ECEF;
            border-bottom: 1px solid #D1DEE2;



        }
        .hello > article .cart > .carthead > li:nth-child(6) .price{
            position: absolute;
            width: 48.2px;
            height: 14px;
            left: 21.72px;
            top: calc(50% - 14px/2 - 0.5px);
                    
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;
                    
            color: #000000;

        }
        


        .hello > article .cart .cartbody2{
            box-sizing: border-box;

            position: absolute;
            width: 762px;
            height: 105px;
            left: 0px;
            top: calc(50% - 105px/2 - 210px);

            border-bottom: 1px solid #EEEEEE;

        }

        .hello > article .cart .cartbody2 >.image1{
            position: absolute;
            width: 80px;
            height: 80px;
            left: 10px;
            top: 10.5px;

            background: url(.jpg);
                    
        }
        .hello > article .cart .cartbody2 > .kind1{
            position: absolute;
            width: 24.2px;
            height: 14px;
            left: 126.09px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #777777;

        }
        .hello > article .cart .cartbody2 > .Productname1{
            position: absolute;
            width: 51.2px;
            height: 14px;
            left: 186.19px;
            top: 45px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 11.0625px;
            line-height: 13px;
            /* identical to box height */
            display: flex;
            align-items: center;

            color: #111111;


        }

        .hello > article .cart .cartbody2 > .discount1{
            position: absolute;
            width: 22.2px;
            height: 14px;
            left: 522.41px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 11.625px;
            line-height: 14px;
            /* identical to box height */
            display: flex;
            align-items: center;
            text-align: center;

            color: #111111;

        }
        .hello > article .cart .cartbody2 > .point1{
            position: absolute;
            width: 24.89px;
            height: 14px;
            left: 612.5px;
            top: calc(50% - 14px/2 - 0.5px);
                    
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 9.75px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;
                    
            color: #111111;

        }
        .hello > article .cart .cartbody2 > .price1{
            position: absolute;
            height: 105px;
            left: 88%;
            right: 0%;
            top: calc(50% - 105px/2);
    
        }

        .hello > article .cart .cartbody2 > .price1 > div:nth-child(1){
            position: absolute;
            width: 39px;
            height: 14px;
            left: 11.22px;
            top: 36.5px;

        }
        .hello > article .cart .cartbody2 > .price1 > div:nth-child(1) .price1_1{
            position: absolute;
            width: 39.2px;
            height: 14px;
            left: 0px;
            top: 0px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 10.125px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #111111;

        }
        .hello > article .cart .cartbody2 > .price1 > div:nth-child(2){
            position: absolute;
            width: 40.5px;
            height: 31px;
            left: 39.72px;
            top: 36.5px;
        }
        .hello > article .cart .cartbody2 > .price1 > div:nth-child(2) .price1_2{
            position: absolute;
            width: 27.2px;
            height: 14px;
            left: 13.5px;
            top: 0px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 9.75px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;
            text-decoration-line: line-through;

            color: #777777;

        }
        .hello > article .cart .cartbody2 > .price1 > div:nth-child(2) > p{
            position: absolute;
            width: 12.2px;
            height: 14px;
            left: 0px;
            top: 17px;
                    
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;
            text-decoration-line: line-through;
                    
            color: #777777;

        }
        .hello > article .cart .cartbody3{
            box-sizing: border-box;

            position: absolute;
            width: 762px;
            height: 105px;
            left: 0px;
            top: calc(50% - 105px/2 - 105px);

            border-bottom: 1px solid #EEEEEE;

        }
        
        .hello > article .cart .cartbody3 >.image2{
            position: absolute;
            width: 80px;
            height: 80px;
            left: 10px;
            top: 10.5px;

            background: url(.jpg);
                    
        }
        .hello > article .cart .cartbody3 > .kind2{
            position: absolute;
            width: 24.2px;
            height: 14px;
            left: 126.09px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #777777;

        }
        .hello > article .cart .cartbody3 > .Productname2{
            position: absolute;
            width: 87.2px;
            height: 14px;
            left: 186.19px;
            top: 45px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            white-space: nowrap;

            color: #111111;

        }

        .hello > article .cart .cartbody3 > .discount2{
            position: absolute;
            width: 22.2px;
            height: 14px;
            left: 522.41px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 11.625px;
            line-height: 14px;
            /* identical to box height */
            display: flex;
            align-items: center;
            text-align: center;

            color: #111111;
                    
        }
        .hello > article .cart .cartbody3 > .point2{
            position: absolute;
            width: 24.89px;
            height: 14px;
            left: 612.5px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 9.75px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #111111;



        }
        .hello > article .cart .cartbody3 > .price2{

            position: absolute;
            height: 105px;
            left: 88%;
            right: 0%;
            top: calc(50% - 105px/2);
 
        }


        .hello > article .cart .cartbody3 > .price2 > div:nth-child(1){
            position: absolute;
            width: 39px;
            height: 14px;
            left: 11.22px;
            top: 36.5px;

        }
        .hello > article .cart .cartbody3 > .price2 > div:nth-child(1) .price2_1{
            position: absolute;
            width: 39.2px;
            height: 14px;
            left: 0px;
            top: 0px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 10.125px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #111111;

        }
        .hello > article .cart .cartbody3 > .price2 > div:nth-child(2){
            position: absolute;
            width: 40.5px;
            height: 31px;
            left: 39.72px;
            top: 36.5px;
        }
        .hello > article .cart .cartbody3 > .price2 > div:nth-child(2) .price2_2{
            position: absolute;
            width: 27.2px;
            height: 14px;
            left: 13.5px;
            top: 0px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 9.75px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;
            text-decoration-line: line-through;

            color: #777777;


        }
        .hello > article .cart .cartbody3 > .price2 > div:nth-child(2) > p{

            position: absolute;
            width: 12.2px;
            height: 14px;
            left: 0px;
            top: 17px;
                    
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;
            text-decoration-line: line-through;
                    
            color: #777777;


        }

          .hello > article .cart .cartbody4{
            box-sizing: border-box;

            position: absolute;
            width: 762px;
            height: 105px;
            left: 0px;
            top: calc(50% - 105px/2);

            border-bottom: 1px solid #EEEEEE;
                  
        }
        

        .hello > article .cart .cartbody4 >.image3{
            position: absolute;
            width: 80px;
            height: 80px;
            left: 10px;
            top: 10.5px;

            background: url(.jpg);

        }
        .hello > article .cart .cartbody4 > .kind3{

            position: absolute;
            width: 24.2px;
            height: 14px;
            left: 126.09px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #777777;

        }
        .hello > article .cart .cartbody4 > .Productname3{
            position: absolute;
            width: 63.2px;
            height: 14px;
            left: 186.19px;
            top: 45px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;

            color: #111111;

        }

        .hello > article .cart .cartbody4 > .discount3{
            position: absolute;
            width: 22.2px;
            height: 14px;
            left: 522.41px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 11.625px;
            line-height: 14px;
            /* identical to box height */
            display: flex;
            align-items: center;
            text-align: center;

            color: #111111;

        }
        .hello > article .cart .cartbody4 > .point3{
            position: absolute;
            width: 24.89px;
            height: 14px;
            left: 612.5px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 9.75px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #111111;

        }
        .hello > article .cart .cartbody4 > .price3{

            position: absolute;
            height: 105px;
            left: 88%;
            right: 0%;
            top: calc(50% - 105px/2);
     
        }

        .hello > article .cart .cartbody4 > .price3 > div:nth-child(1){

            position: absolute;
            width: 39px;
            height: 14px;
            left: 11.22px;
            top: 36.5px;
        }
        .hello > article .cart .cartbody4 > .price3 > div:nth-child(1) .price3_1{
            position: absolute;
            width: 39.2px;
            height: 14px;
            left: 0px;
            top: 0px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 10.125px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #111111;

        }
        .hello > article .cart .cartbody4 > .price3 > div:nth-child(2){
            position: absolute;
            width: 40.5px;
            height: 31px;
            left: 39.72px;
            top: 36.5px;
        }
        .hello > article .cart .cartbody4 > .price3 > div:nth-child(2) .price3_2{

            position: absolute;
            width: 27.2px;
            height: 14px;
            left: 13.5px;
            top: 0px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 9.75px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;
            text-decoration-line: line-through;

            color: #777777;

        }
        .hello > article .cart .cartbody4 > .price3 > div:nth-child(2) > p{
            position: absolute;
            width: 12.2px;
            height: 14px;
            left: 0px;
            top: 17px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;
            text-decoration-line: line-through;

            color: #777777;

        }

        .hello > article .cart .cartbody5 {
            box-sizing: border-box;

            position: absolute;
            width: 762px;
            height: 105px;
            left: 0px;
            top: calc(50% - 105px/2 + 105px);

            border-bottom: 1px solid #EEEEEE;

        }
        
        .hello > article .cart .cartbody5 >.image4{
            position: absolute;
            width: 80px;
            height: 80px;
            left: 10px;
            top: 10.5px;

            background: url(.jpg);

        }
        .hello > article .cart .cartbody5 > .kind4{

            position: absolute;
            width: 24.2px;
            height: 14px;
            left: 126.09px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #777777;

        }
        .hello > article .cart .cartbody5 > .Productname4{
            position: absolute;
            width: 63.2px;
            height: 14px;
            left: 186.19px;
            top: 45px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            white-space: nowrap;

            color: #111111;

        }

        .hello > article .cart .cartbody5 > .discount4{
            position: absolute;
            width: 22.2px;
            height: 14px;
            left: 522.41px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 11.625px;
            line-height: 14px;
            /* identical to box height */
            display: flex;
            align-items: center;
            text-align: center;

            color: #111111;

        }
        .hello > article .cart .cartbody5 > .point4{
            position: absolute;
            width: 24.89px;
            height: 14px;
            left: 612.5px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 9.75px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #111111;

        }
        .hello > article .cart .cartbody5 > .price4{

            position: absolute;
            height: 105px;
            left: 88%;
            right: 0%;
            top: calc(50% - 105px/2);
     
        }

        .hello > article .cart .cartbody5 > .price4 > div:nth-child(1){

            position: absolute;
            width: 39px;
            height: 14px;
            left: 11.22px;
            top: 36.5px;
        }
        .hello > article .cart .cartbody5 > .price4 > div:nth-child(1) .price4_1{
            position: absolute;
            width: 39.2px;
            height: 14px;
            left: 0px;
            top: 0px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 10.125px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #111111;

        }
        .hello > article .cart .cartbody5 > .price4 > div:nth-child(2){
            position: absolute;
            width: 40.5px;
            height: 31px;
            left: 39.72px;
            top: 36.5px;
        }
        .hello > article .cart .cartbody5 > .price4 > div:nth-child(2) .price4_2{

            position: absolute;
            width: 27.2px;
            height: 14px;
            left: 13.5px;
            top: 0px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 9.75px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;
            text-decoration-line: line-through;

            color: #777777;

        }
        .hello > article .cart .cartbody5 > .price4 > div:nth-child(2) > p{
            position: absolute;
            width: 12.2px;
            height: 14px;
            left: 0px;
            top: 17px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;
            text-decoration-line: line-through;

            color: #777777;

        }
        .hello > article .cart .cartbody6 {
            box-sizing: border-box;

            position: absolute;
            width: 762px;
            height: 105px;
            left: 0px;
            top: calc(50% - 105px/2 + 210px);

            border-bottom: 1px solid #EEEEEE;

        }
        .hello > article .cart .cartbody6 >.image5{
            position: absolute;
            width: 80px;
            height: 80px;
            left: 10px;
            top: 10.5px;

            background: url(.jpg);

        }
        .hello > article .cart .cartbody6 > .kind5{

            position: absolute;
            width: 24.2px;
            height: 14px;
            left: 126.09px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #777777;

        }
        .hello > article .cart .cartbody6 > .Productname5{
            position: absolute;
            width: 63.2px;
            height: 14px;
            left: 186.19px;
            top: 45px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            white-space: nowrap;

            color: #111111;

        }

        .hello > article .cart .cartbody6 > .discount5{
            position: absolute;
            width: 22.2px;
            height: 14px;
            left: 522.41px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 11.625px;
            line-height: 14px;
            /* identical to box height */
            display: flex;
            align-items: center;
            text-align: center;

            color: #111111;

        }
        .hello > article .cart .cartbody6 > .point5{
            position: absolute;
            width: 24.89px;
            height: 14px;
            left: 612.5px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 9.75px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #111111;

        }
        .hello > article .cart .cartbody6 > .price5{

            position: absolute;
            height: 105px;
            left: 88%;
            right: 0%;
            top: calc(50% - 105px/2);
     
        }

        .hello > article .cart .cartbody6 > .price5 > div:nth-child(1){

            position: absolute;
            width: 39px;
            height: 14px;
            left: 11.22px;
            top: 36.5px;
        }
        .hello > article .cart .cartbody6 > .price5 > div:nth-child(1) .price5_1{
            position: absolute;
            width: 39.2px;
            height: 14px;
            left: 0px;
            top: 0px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 10.125px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #111111;

        }
        .hello > article .cart .cartbody6 > .price5 > div:nth-child(2){
            position: absolute;
            width: 40.5px;
            height: 31px;
            left: 39.72px;
            top: 36.5px;
        }
        .hello > article .cart .cartbody6 > .price5 > div:nth-child(2) .price5_2{

            position: absolute;
            width: 27.2px;
            height: 14px;
            left: 13.5px;
            top: 0px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 9.75px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;
            text-decoration-line: line-through;

            color: #777777;

        }
        .hello > article .cart .cartbody6 > .price5 > div:nth-child(2) > p{
            position: absolute;
            width: 12.2px;
            height: 14px;
            left: 0px;
            top: 17px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;
            text-decoration-line: line-through;

            color: #777777;

        }
        .hello > article .next{
            position: absolute;
            width: 101.76px;
            height: 14px;
            left: calc(50% - 101.76px/2 + 20.1px);
            top: 723px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 10.5px;
            line-height: 13px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #999999;
            

        }

        .hello > article .next .highlight3{
            color: #111111;

        }





        footer {
            box-sizing: border-box;
            position: absolute;
            margin : 0 auto;
            width: 980px;
            height: 130px;
            left: 470px;
            right: 470px;
            top: 1084px;
           
        } 

</style>

  
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
                <a href="#"><span class="highlight2">전체(10)</span>&nbsp;| 과일 | 야채 | 곡류</a>
                <section class="cart">
                    <ul class="carthead">
                        <li><p class="image">이미지</p></li>
                        <li><p class="kind">종류</p></li>
                        <li><p class="Productname">상품명</p></li>
                        <li><p class="discount">할인</p></li>
                        <li><p class="point">포인트</p></li>
                        <li><p class="price">판매가격</p></li>
                    </ul>
                    <div class="cartbody">
                        <div class="cartbody2">
                            <img src="/farm/img/market_item1.jpg" class="image1" alt="">
                            <p class="kind1">과일</p>
                            <p class="Productname1">사과 500g</p>
                            <p class="discount1">10%</p>
                            <p class="point1">400p</p>
                            <div class="price1">
                                <div><p class="price1_1">3,600원</p></div>
                                <div>
                                    <p class="price1_2">4,000 </p>
                                    <p>원</p>
                                </div>
                               
                            </div>
                        </div>
                        <div class="cartbody3">
                            <img src="/farm/img/market_item2.jpg" class="image2" alt="">
                            <p class="kind2">과일</p>
                            <p class="Productname2">전남 완주 배 5kg</p>
                            <p class="discount2">10%</p>
                            <p class="point2">400p</p>
                            <div class="price2">
                                <div><p class="price2_1">3,600원</p></div>
                                <div>
                                    <p class="price2_2">4,000</p>
                                    <p>원</p>
                                </div>    
                            
                            </div>
                        </div>
                        <div class="cartbody4">
                            <img src="/farm/img/market_item3.jpg" class="image3" alt="">
                            <p class="kind3">과일</p>
                            <p class="Productname3">방울토마토</p>
                            <p class="discount3">10%</p>
                            <p class="point3">400p</p>
                            <div class="price3">
                                <div><p class="price3_1">3,600원</p></div>
                                <div>
                                    <p class="price3_2">4,000</p>
                                    <p>원</p>
                                </div>    
                            </div>
                        </div>
                        <div class="cartbody5">
                            <img src="/farm/img/market_item6.jpg" class="image4" >
                            <p class="kind4">곡류</p>
                            <p class="Productname4">무농약 현미</p>
                            <p class="discount4">10%</p>
                            <p class="point4">400p</p>
                            <div class="price4">
                                <div><p class="price4_1">3,600원</p></div>
                                <div>
                                    <p class="price4_2">4,000</p>
                                    <p>원</p>
                                </div>    
                            </div>
                        </div>
                        <div class="cartbody6">
                            <img src="/farm/img/market_item7.jpg" class="image5" alt="">
                            <p class="kind5">야채</p>
                            <p class="Productname5">팜스토리 하루야채 샐러드</p>
                            <p class="discount5">10%</p>
                            <p class="point5">400p</p>
                            <div class="price5">
                                <div><p class="price5_1">3,600원</p></div>
                                <div>
                                    <p class="price5_2">4,000</p>
                                    <p>원</p>
                                </div>    
                            </div>
                        </div>          
                </section>
                <a href="#" class="next"><&nbsp;<span style="text-decoration: underline;" class="highlight3" >[1]</span>&nbsp;[2] [3] [4] [5] ></a>
               
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
    </main>
  
      <%@ include file="/WEB-INF/_footer.jsp" %>
  </div>
  </body>
  </html>
  