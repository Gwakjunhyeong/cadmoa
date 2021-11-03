<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="resources/css/login.css">
</head>
<body>
    <div id="wrap">
        <div class=box>
            <h2 class="logo"><a href="http://localhost:8080/"><img src="resources/img/logo.png" alt=""></a></h2>
            <div class="login">
                <form action="" class="form1">
                    <div class="id box_In">
                        <input type="text" name="" placeholder="아이디를 입력하세요">
                    </div>
                    <div class="pw box_In">
                        <input type="password" name="" placeholder="비밀번호를 입력하세요">
                    </div>
                    <input type="button" value="로그인" class="login-button box_In">
                </form>
                <div class="find">
                    <a href="http://localhost:8080/findId" class="find-id">아이디 찾기</a>
                    <a href="http://localhost:8080/findPw" class="find-pw">비밀번호 찾기</a>
                    <a href="http://localhost:8080/join" class="info">회원가입</a>   
                </div>
            
            </div> 
        </div>

        <div id="footer">
            <div class="fMenu">
                <ul>
                    <li><a href="">이용약관</a></li>
                    <li><a href="">개인정보처리방침</a></li>
                    <li><a href="">제휴문의</a></li>
                </ul>
            </div>
            <div class="fInfo">
                <span>(주)그린컴퓨터</span>
                <span>대표이사:곽이구김 </span>
                <span>사업자 등록번호:070-000-000<a href="#">[사업자정보확인]</a></span>
                <br>
                <span>고객센터:052-716-3199</span>
                <span>팩스:02-520-0000</span>
                <br>
                <span>주소: 울산 남구 삼산중로 100번길 26</span>                        <span>개인정보보호책임자:이병훈</span>
            </div>
            <div class="copyright">
                Copyright ⓒ 2021 CardMoa All Rights Reserved.
            </div>
        </div>

    </div>
</body>
</html>