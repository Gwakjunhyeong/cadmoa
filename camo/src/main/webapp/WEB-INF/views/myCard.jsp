<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/includes/header.jsp" %>


            <div class="card_registration">
                <div class="card_registration_In">
                    <h2>보유중인 카드</h2>
                    <form action="">
                        <div class="card_list">
                            <div class="card_list_In">
                                <div class="plus">
                                    <button type="button" id="add" onclick="addPopup();">+</button>
                                </div>
                            </div>
                            <div class="card_list_In">
                                <div class="plus">
                                    <button type="button" id="add" onclick="addPopup();">+</button>
                                </div>
                            </div>
                            <div class="card_list_In">
                                <div class="plus">
                                    <button type="button" id="add" onclick="addPopup();">+</button>
                                </div>
                            </div>
                            <div class="card_list_In">
                                <div class="delete">
                                    <input type="button" name="" id="" value="x" class="delete">
                                </div>
                            </div>
                            <div class="card_list_In">
                                <div class="delete">
                                    <input type="button" name="" id="" value="x" class="delete">
                                </div>
                            </div>
                            <div class="card_list_In">
                                <div class="delete">
                                    <input type="button" name="" id="" value="x" class="delete">
                                </div>
                            </div>
                        </div>
                    </form>
                </div><!-- .card_registration_In -->
            </div><!-- .card_registration -->
        </div><!-- #container -->


        
        <%@ include file="/WEB-INF/views/includes/footer.jsp" %>