<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	<!--  jstl -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	<!-- date -->


<%@ include file="/WEB-INF/views/includes/headerQna.jsp" %>

	
	<link rel="stylesheet" href="/resources/css/read.css" type="text/css">
    <title>read</title>


			<div class="read">
                <h2><a href="/board/cm_qna/list">Q&A</a></h2>
              	<div class="readIn">
              		<input type="hidden" value="${read.bno}" id="bno">
                    <h3>${read.title}</h3>
                    <p class="writer"><a href="#">${read.writer}</a></p>
                    <p class="content">${read.content}</p>
                    <div class="readBtn">
                        <button class="readModifyBtn"><a href="/board/cm_qna/modify?bno=${read.bno}">수정하기</a></button>
						<button class="readDeleteBtn"><a href="/board/cm_qna/remove?bno=${read.bno}">삭제하기</a></button>
                    </div>
                </div> <!-- .readIn -->
            </div> <!-- .read-->
	
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<i class="fa fa-comments fa-fw"></i> Reply
					<button id="addReplyBtn" class="btn btn-primary btn-xs pull-right">댓글쓰기</button>
					<!-- button에 어떠한 동작을 주고싶으면 무조건 js에서 event 써야 함 (input과 다름) -->
				</div> <!-- .panel-heading -->
				
				<div class="panel-body">
					<ul class="chat">

					</ul> <!-- .chat -->
				</div> <!-- .panel-body -->
				<div class="panel-footer">
				
				</div>
				
				
			</div> <!-- .panel .panel-default -->
		</div>	<!-- .col-lg-12 -->
	</div> <!-- .row -->

<%@ include file="/WEB-INF/views/includes/footer.jsp" %>