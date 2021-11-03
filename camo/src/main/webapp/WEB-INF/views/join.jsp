<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>camo : 회원가입</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
    <!-- jquary 구현 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- slick cdn -->
    <link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link rel="stylesheet" href="resources/css/join.css">
</head>
<body>
    <div id="wrap">
        
        <!-- container -->
        <div id="container">
            <div id="joinLogo">
                <h1>
                    <a href="http://localhost:8080/" class="jLogo">
                        <span class="hide">CAMO</span>
                    </a>
                </h1>
            </div>
            <div class="content">
                <h2 class="hide">camo 회원가입</h2>
                <!-- .join_form -->
                <form action="" id="joinForm">
                    <!-- 아이디입력 -->
                    <div class="joinRow">
                        <h3 class="joinTitle">
                            <label for="id">아이디</label>
                        </h3>
                        <div class="idBox">
                            <span class="box idLeft">
                                <input type="text" id="id" name="id" class="uInput" maxlength="20" placeholder="영문소문자와 숫자로 된 5~20자의 아이디">
                            </span>
                            <span class="idRight">
                                <input type="button" id="overlapCheckBtn" value="중복확인">
                            </span>
                        </div>
                        <!-- <span class="error_next_box"></span> -->
                    </div>
                    <!-- 비밀번호 입력 -->
                    <div class="joinRow">
                        <h3 class="joinTitle">
                            <label for="pw1">비밀번호</label>
                        </h3>
                        <span class="box">
                            <input type="password" id="pw1" name="pw1" class="uInput" maxlength="20" placeholder="영문소문자, 숫자, 특수문자가 각각 사용된 8~16자의 비밀번호">
                        </span>
                    </div>
                    <!-- 비밀번호 재확인 -->
                    <div class="joinRow">
                        <h3 class="joinTitle">
                            <label for="pw2">비밀번호 재확인</label>
                        </h3>
                        <span class="box">
                            <input type="password" id="pw2" name="pw2" class="uInput" maxlength="20">
                        </span>
                    </div>
                    <!-- 이름 -->
                    <div class="joinRow">
                        <h3 class="joinTitle">
                            <label for="name">이름</label>
                        </h3>
                        <span class="box">
                            <input type="text" id="name" name="name" class="uInput" maxlength="40">
                        </span>
                    </div>
                    <!-- 생년월일 -->
                    <div class="joinRow joinBirth">
                        <h3 class="joinTitle">
                            <label for="yy">생년월일</label>
                        </h3>
                        <div class="birWrap">
                            <div class="birYy">
                                <span class="box">
                                    <input type="text" id="yy" placeholder="년(4자)" class="uInput" maxlength="4">
                                </span>
                            </div>
                            <div class="birMm">
                                <span class="box">
                                    <select id="mm" class="sel">
                                        <option value>월</option>
                                        <option value="01">1</option>
                                        <option value="02">2</option>
                                        <option value="03">3</option>
                                        <option value="04">4</option>
                                        <option value="05">5</option>
                                        <option value="06">6</option>
                                        <option value="07">7</option>
                                        <option value="08">8</option>
                                        <option value="09">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                    </select>
                                </span>
                            </div>
                            <div class="birDd">
                                <span class="box">
                                    <input type="text" id="dd" class="uInput" placeholder="일" maxlength="2">
                                    <label for="dd"></label>
                                </span>
                            </div>
                        </div>
                    </div>
                    <!-- 성별 입력 -->
                    <div class="joinRow joinGender">
                        <h3 class="joinTitle">
                            <label for="gender">성별</label>
                        </h3>
                        <div class="box genderCode">
                            <select name="gender" id="gender" class="sel">
                                <option value selected>성별</option>
                                <option value="M">남자</option>
                                <option value="F">여자</option>
                                <option value="U">선택 안함</option>
                            </select>
                        </div>
                    </div>
                    <!-- 이메일 입력 -->
                    <div class="joinRow">
                        <h3 class="joinTitle">
                            <label for="eamil">이메일</label>
                        </h3>
                        <div class="emailWrap">
                            <div>
                                <div class="emailBox">
                                    <span class="box ebLeft">
                                        <input type="email" id="email" name="email" class="uInput" maxlength="100">
                                    </span>
                                    <span class="ebRight">
                                        <button id="emailCheck">인증번호 전송</button>
                                    </span>
                                </div>
                            </div>
                            <div>
                                <div class="emailBox">
                                    <span class="box ebLeft">
                                        <input type="text" id="email" name="email" class="uInput" maxlength="100">
                                    </span>
                                    <span class="ebRight">
                                        <button id="emailCheck">인증하기</button>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 휴대전화 -->
                    <div class="joinRow">
                        <h3 class="joinTitle">
                            휴대전화
                            <span class="choice">(선택)</span>
                        </h3>
                        <span class="box">
                            <input type="text" class="uInput" id="mobile" placeholder="선택입력 (숫자만 입력)" maxlength="11">
                        </span>
                    </div>
                    <!-- 가입하기 버튼 -->
                    <div class="btnArea">
                        <div class="joinBtn">
                            <button type="submit" class="btn" id="submitBtn">가입하기</button>
                        </div>
                        <div class="cancelBtn">
                            <button type="button" class="btn" onclick="location.href='index.html'">취소</button>
                        </div>
                    </div>
                </form>
                <!-- // .join_form -->
                </div>
            </div>
        </div>
        <!-- // container -->
        <div id="footer">
            <div class="fMenu">
                <ul>
                    <li><a href="">이용약관</a></li>
                    <li><a href="">개인정보처리방침</a></li>
                    <li><a href="">제휴문의</a></li>
                    <li><a href="" class="fLogo"></a></li>
                </ul>
            </div>
            <div class="fInfo">
                <span>(주)그린컴퓨터</span>
                <span>대표이사:곽이구김 </span>
                <span>사업자 등록번호:070-000-000<a href="#">[사업자정보확인]</a></span>
                <span>고객센터:052-716-3199</span>
                <span>팩스:02-520-0000</span>
                <br>
                <span>주소: 울산 남구 삼산중로 100번길 26</span>
                <span>개인정보보호책임자:이병훈</span>
            </div>
            <div class="copyright">
                Copyright ⓒ 2021 CardMoa All Rights Reserved.
            </div>
        </div>
    </div>
    <script>
        // 아이디, 비밀번호, 비밀번호 확인까지 구현
        // 추후, 선택사항인 휴대폰번호제외하고 빈칸 입력해달라는거 추가해야하고.....
        // 지금이랑 월요일 해야겠다 우선 지금은 게시판 만들어 보고,,
        let id=document.querySelector("#id");
        let pw1=document.querySelector("#pw1");
        let pw2=document.querySelector("#pw2");
        let olcBtn=document.querySelector("#overlapCheckBtn");     
        let mobile=document.querySelector("#mobile");

        let joinSubmitBtn=document.querySelector("#submitBtn")

        id.onchange = checkId;
        pw1.onchange = checkPw;
        pw2.onchange = comparePw;
        mobile.onchange = checkMobile;
        birthYear.onchange = checkBirYear;

        joinSubmitBtn.onclick = nullCheck;


        function checkId() {
            var regId = /^[a-z0-9]{5,20}$/;

            if(!regId.test(id.value)){
                alert("5~20자리의 영문소문자와 숫자를 입력하세요.");
                id.value="";
                id.focus();
            }
        }
        
        function checkPw() {
            var regPw = /^(?=.*[a-z])(?=.*\d)(?=.*[$@$!%*#?&])[a-z\d$@$!%*#?&]{8,16}$/;

            if(!regPw.test(pw1.value)){
                alert('영문소문자, 숫자, 특수문자를 반드시 사용해 8~16자리의 비밀번호를 입력하세요.');
                pw1.value="";
                pw1.focus();
            }
        }

        function checkMobile() {
            var regMobile = /^[0-9]{10,11}$/;

            if(!regMobile.test(mobile.value)){
                alert('영문소문자, 숫자, 특수문자를 반드시 사용해 8~16자리의 비밀번호를 입력하세요.');
                mobile.value="";
                mobile.focus();
            }
        }

        function comparePw(){
            if(pw1.value!==pw2.value){
                alert('비밀번호가 잘못 입력되었습니다');
                pw2.value="";
                pw2.focus();
            }
        }


        // 필수입력값들 중 비어있는 값이 있는지 체크
        // 가입하기 버튼 클릭시 아래 함수 실행
        function nullCheck(){ 
            let form = document.querySelector("#joinForm");

            if(!form.id.value){alert("아이디를 입력하세요");}
            if(!form.pw1.value){alert("비밀번호를 입력하세요");}
            if(!form.name.value){alert("이름을 입력하세요");}
            // if(!form.yy.value || !form.mm.value || !form.dd.value){alert("생년월일을 입력하세요");}
            if(!form.yy.value){alert("태어난 년도를 입력하세요");}
            if(!form.mm.value){alert("태어난 달을을 선택하세요");}
            if(!form.dd.value){alert("태어난 날을 입력하세요");}
            if(!form.gender.value){alert("성별을 선택하세요");}
            if(!form.email.value){alert("이메일을 입력하세요");}

            // 문제점_입력되어 있던 값들이 싹 사라진다.
        }


    </script>
</body>
</html>