<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>카드모아</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <!-- jquary 구현 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- slick cdn -->
    <link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    
    <link rel="stylesheet" href="/resources/css/home.css">
</head>
<body>
    <div id="wrap">
        <header id="header">
            <div class="headerIn">
                <h1 class="logo"><a href="http://localhost:8080/"><img src="/resources/img/logo.png" alt="카모"></a></h1>
                <div class="util">
                    <div class="member">
                        <div class="login"><a href="http://localhost:8080/login">LOGIN</a></div>
                        <div class="bar"></div>
                        <div class="join"><a href="http://localhost:8080/join">JOIN</a></div>
                    </div>
                </div>
                <div class="gnb">
                    <div class="gnb_in">
                        <div class="sub_c">
                            <p class="sub_cimg"><img src="/resources/img/black_car.png" alt=""></p>
                            <!--.sub_cimg 카드이미지 -->
                        </div>
                        <ul>
                            <li>
                                <a href="http://localhost:8080/recommend">나에게 맞는 카드찾기</a>
                                <div class="sub">
                                    <ul>
                                        <li><a href="">준비중</a></li>
                                        <li><a href="">준비중</a></li>
                                        <li><a href="">준비중</a></li>
                                    </ul>
                                </div>
                            </li><!-- 1번메뉴-->
                            <li>
                                <a href="http://localhost:8080/myCard">내지갑 모아보기</a>
                                <div class="sub">
                                    <ul>
                                        <li><a href="">준비중</a></li>
                                        <li><a href="">준비중</a></li>
                                        <li><a href="">준비중</a></li>
                                    </ul>
                                </div>
                            </li><!-- 2번메뉴-->
                            <li>
                                <a href="">소식</a>
                                <div class="sub">
                                    <ul>
                                        <li><a href="">이벤트</a></li>
                                        <li><a href="">뉴스</a></li>
                                    </ul>
                                </div>
                            </li><!-- 3번메뉴-->
                            <li>
                                <a href="">고객센터</a>
                                <div class="sub">
                                    <ul>
                                        <li><a href="http://localhost:8080/board/cm_qna/list">Q&A</a></li>
                                        <li><a href="http://localhost:8080/board/cm_notice/list">공지사항</a></li>
                                    </ul>
                                </div>
                            </li><!-- 4번메뉴-->
                        </ul>
                    </div>
                    <div class="gnbBg"></div>
                </div><!-- .gnb-->

                <div class="main_con"> <!--검색 버튼창, #키워드 -->
                    <div class="main_search">
                        <div class="input_wrap">
                            <div class="ip_btn">
                                <form action="">
                                    <label for="mainSearch">
                                        <input type="text" name="" id="mainSearch_pc" placeholder="검색하세요." class="input_box" maxlength="200" autocomplete="off">
                                    </label>
                                </form>
                                <button id="mainSearchClick" type="button" class="search_btn"><img src="/resources/img/ico_search_card.png" alt="검색하기"></button>
                                <!-- <button id="scValDel" type="button" class="btn_clear"><span>삭제</span></button></div> 검색창 작성하고나면 삭제버튼-->
                            </div>
                            <ul class="main_search_word">
                                <li><a href="#">#마트</a></li>
                                <li><a href="#">#온라인 쇼핑</a></li>
                                <li><a href="#">#주유</a></li>
                                <li><a href="#">#카페</a></li>
                                <li><a href="#">#생활요금정기결제</a></li>
                                <li><a href="#">#편의점</a></li>
                            </ul>
                        </div><!-- .input_wrap -->
                    </div><!-- .main_search -->
                </div><!-- .main_con -->
            </div><!-- .headerIn -->
        </header><!-- #header -->


    
        <div id="container">
            <div class="mainBg">
                <div class="mImg">
                    <a href="#"><img src="/resources/img/main.jpg" alt=""></a>
                </div>
            </div><!-- .mainBg-->

            <div class="best">
                <h2><a href="http://localhost:8080/recommend">베스트 <span>Card</span></a></h2>
                    <ul class="best_img">
                        <li>
                            <a href="http://localhost:8080/recommend">
                                <span class="ranking"><img src="/resources/img/label01.gif" alt="베스트1번"></span>
                            <img src="/resources/img/card_best01.jpg" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="http://localhost:8080/recommend">
                                <span class="ranking"><img src="/resources/img/label02.gif" alt="베스트2번"></span>
                            <img src="/resources/img/card_best02.jpg" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="http://localhost:8080/recommend">
                                <span class="ranking"><img src="/resources/img/label03.gif" alt="베스트3번"></span>
                            <img src="/resources/img/card_best03.jpg" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="http://localhost:8080/recommend">
                                <span class="ranking"><img src="/resources/img/label01.gif" alt="베스트1번"></span>
                            <img src="/resources/img/card_best04.jpg" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="http://localhost:8080/recommend">
                                <span class="ranking"><img src="/resources/img/label02.gif" alt="베스트2번"></span>
                            <img src="/resources/img/card_best05.jpg" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="http://localhost:8080/recommend">
                                <span class="ranking"><img src="/resources/img/label03.gif" alt="베스트3번"></span>
                            <img src="/resources/img/card_best06.jpg" alt="">
                            </a>
                        </li>
                    </ul>
                </div>
            </div><!--.best -->

            <div class="banner">
                <div class="banner_In">
                    <a href="#"><img src="/resources/img/banner_1.jpg" alt=""></a>
                    <a href="#"><img src="/resources/img/banner_2.jpg" alt=""></a>
                </div>
            </div><!--.banner -->

            <div class="board">
                <div class="bo2">
                    <div class="notice">
                        <h2><a href="http://localhost:8080/board/cm_notice/list">NOTICE</a></h2>
                        <ul>
                            <li>
                                <a href="http://localhost:8080/board/cm_notice/list">공지사항 게시글입니다. (4)</a>
                                <span>2021-10-31</span>
                            </li>
                            <li>
                                <a href="http://localhost:8080/board/cm_notice/list">공지사항 게시글입니다. (3)</a>
                                    <span>2021-10-31</span>
                            </li>
                            <li>
                                <a href="http://localhost:8080/board/cm_notice/list">공지사항 게시글입니다. (2)</a>
                                <span>2021-10-31</span>
                            </li>
                            <li>
                                <a href="http://localhost:8080/board/cm_notice/list">공지사항 게시글입니다. (1)</a>
                                <span>2021-10-31</span>
                            </li>
                        </ul>
                    </div><!-- .notice-->
                    <div class="bar"></div>
                    <div class="faq">
                        <h2><a href="http://localhost:8080/board/cm_qna/list">Q&A</a></h2>
                        <ul>
                            <li>
                                <a href="http://localhost:8080/board/cm_qna/list">Q&A 게시글입니다. (4)</a>
                                <span>2021-10-31</span>
                            </li>
                            <li>
                                <a href="http://localhost:8080/board/cm_qna/list">Q&A 게시글입니다. (3)</a>
                                    <span>2021-10-31</span>
                            </li>
                            <li>
                                <a href="http://localhost:8080/board/cm_qna/list">Q&A 게시글입니다. (2)</a>
                                <span>2021-10-31</span>
                            </li>
                            <li>
                                <a href="http://localhost:8080/board/cm_qna/list">Q&A 게시글입니다. (1)</a>
                                <span>2021-10-31</span>
                            </li>
                        </ul>
                    </div>
                </div><!-- .faq-->
            </div><!-- .board-->
        </div><!-- #container -->
        
        
        
        
<%@ include file="./includes/footer.jsp" %>