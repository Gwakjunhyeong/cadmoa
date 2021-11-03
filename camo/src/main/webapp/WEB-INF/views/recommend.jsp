<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/includes/header.jsp" %>

            <div class="cardChoice">
                <div class="box1">
                    <ul class= "tag1">
                        <li id="benefit">마트</li>
                        <li id="benefit">온라인쇼핑</li>
                        <li id="benefit">주유</li>
                    </ul>
                    <ul class= "tag2">
                        <li id="benefit">카페</li>
                        <li id="benefit">생활요금</li>
                        <li id="benefit">편의점</li>
                    </ul>
                </div>
                <div class="btnArea">
                    <input type="button" value="초기화">
                    <input type="button" value="카드 추천">
                </div>
            </div>

            <div class="best3">
                <h2>나에게 맞는 best3 카드</h2>
                <div class="best3Card">
                    <div>
                        <div class="cardImg">
                            <img src="resources/img/농협카드3_올바른 MYPICK 카드.png" alt="">
                            <div class="cardImgBg"></div>
                        </div>
                        <div class="cardMemo"> 
                            <!-- 혜택 내용에 따라서 CSS margin-left 설정할 것.-->
                            <p>혜택내용1: </p>
                            <p>혜택내용2: </p>
                            <p>혜택내용3: </p>
                            <p>혜택내용4: </p>
                        </div>
                        <div class="cardButton">
                            <input type="button" value="더 알아보기">
                        </div>    
                    </div>
                    <div>
                        <div class="cardImg">
                            <img src="resources/img/삼성카드5_taptap SHOPPING.png" alt="">
                            <div class="cardImgBg"></div>
                        </div>
                        <div class="cardMemo">
                            <p>혜택내용1: </p>
                            <p>혜택내용2: </p>
                            <p>혜택내용3: </p>
                            <p>혜택내용4: </p>
                        </div>
                        <div class="cardButton">
                            <input type="button" value="더 알아보기">
                        </div>  
                    </div>
                    <div>
                        <div class="cardImg">
                            <img src="resources/img/삼성카드7_신세계 Art & Science 삼성카드.png" alt="">
                            <div class="cardImgBg"></div>
                        </div>
                            <div class="cardMemo">
                            <p>혜택내용1: </p>
                            <p>혜택내용2: </p>
                            <p>혜택내용3: </p>
                            <p>혜택내용4: </p>
                        </div>
                        <div class="cardButton">
                            <input type="button" value="더 알아보기">
                        </div>  
                    </div>
                </div>
            </div>

            
        </div><!-- #container -->


        
        <%@ include file="/WEB-INF/views/includes/footer.jsp" %>