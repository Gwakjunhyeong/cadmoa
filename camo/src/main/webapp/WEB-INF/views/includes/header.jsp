<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    
    <link rel="stylesheet" href="resources/css/myCard.css">
    <link rel="stylesheet" href="resources/css/recommend.css">
</head>
<body>
    <div id="wrap">
        <header id="header">
            <div class="headerIn">
                <h1 class="logo"><a href="http://localhost:8080/"><img src="resources/img/logo.png" alt="카모"></a></h1>
                <div class="util">
                    <div class="member">
                        <div class="login"><a href="http://localhost:8080/login">LOGIN</a></div>
                        <div class="bar"></div>
                        <div class="join"><a href="http://localhost:8080/join">JOIN</a></div>
                    </div>
                </div>
                <div class="gnb">
                    <div class="gnb_in">
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
            </div><!-- .headerIn -->
        </header><!-- #header -->


    
        <div id="container">
            <div class="mainBg">
                <div class="mImg">
                    <a href="#"><img src="resources/img/maincolor_2.jpg" alt=""></a>
                </div>
            </div><!-- .mainBg-->