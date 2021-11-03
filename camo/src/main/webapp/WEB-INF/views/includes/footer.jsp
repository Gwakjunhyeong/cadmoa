<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    	<div id="footer">
            <div class="footerIn">
                <div class="fL">
                    <div class="fLogo"><img src="/resources/img/logo.png" alt=""></div>
                    <div class="fMenu">
                        <ul>
                            <li><a href="#">이용약관</a></li>
                            <li><a href="#">개인정보처리방침</a></li>
                            <li><a href="#">제휴문의</a></li>
                        </ul>
                    </div>
                    <div class="fInfo">
                        <span>(주)그린컴퓨터</span>
                        <span>대표이사:곽이구김 </span>
                        <span>사업자 등록번호:070-000-000<a href="#">[사업자정보확인]</a></span>
                        <span>고객센터:052-716-3199</span>
                        <span>팩스:02-520-0000</span>
                        <br>
                        <span>주소: 울산 남구 삼산중로 100번길 26</span>                        <span>개인정보보호책임자:이병훈</span>
                    </div>
                    <div class="copyright">
                        Copyright ⓒ 2021 CardMoa All Rights Reserved.
                    </div>
                </div><!-- .fL-->

                <div class="fR">
                    <div class="fCs">
                        <h3>Customer Center</h3>
                        <p class="tel">
                            <img src="/resources/img/icon_tel.png" alt="">
                            <span>052-716-3199</span>
                        </p>
                        <P class="time">
                            Mon-Fri. 10:00 ~ 17:00  / Lunch.12:00 ~ 13:30 <br>
                            Close. Sat,Sun,Holiday green303@naver.com
                        </P>
                    </div>
                    <div class="fSns">
                        <ul>
                            <li><a href="#"><img src="/resources/img/sns_facebook.png" alt=""></a></li>
                            <li><a href="#"><img src="/resources/img/sns_insta.png" alt=""></a></li>
                            <li><a href="#"><img src="/resources/img/sns_youtube.png" alt=""></a></li>
                        </ul>
                    </div>
                </div><!-- .fR-->

                <div class="goTop">
                    <a href="#"><img src="/resources/img/btn_top.png"></a>
                </div>
            </div><!-- .footerIn-->
        </div><!-- #footer -->
    </div><!-- #wrap -->
</body>
    <script>
        // 메인 네비게이션
        $(document).ready(function(){
            $('.gnb_in').mouseover(function()
            {
                $('.sub_c, .sub , .gnbBg').stop(true).slideDown('fast');
            });
            $('.gnb').mouseout(function()
            {
                $('.sub_c, .sub , .gnbBg').slideUp('fast');
            });
        });
    

        // best 슬라이드 부분입니다.
        $('.best_img ').slick({
            dots: true,
            infinite:true, // 맨끝이미지에서 끝나지 않고 다시 맨앞으로 이동
            slidesToShow: 3, //보여질 슬라이드 수
            slidesToScroll: 1, //넘겨질 슬라이드 수
            autoplay: true, // 자동 넘김 여부
            autoplaySpeed: 2000,
            arrows:true,
            pauseOnHover:true,  // 마우스 호버시 슬라이드 이동 멈춤
            // prevArrow:$('.prev'),
            // nextArrow:$('.next'),


            // 메인 네비게이션

        });
    </script>
</html>