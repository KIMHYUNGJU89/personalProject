<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<!-- el변수 cp에 경로저장 -->

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="${cp}/resources/Fgo.css">
    <meta charset="UTF-8">
    <title>Insert title here</title>

</head>
<body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            // rarity가 1 이상인 경우에만 해당 칸을 표시
            for (let i = 1; i <= 5; i++) {
                if ($('.servant-info[data-rarity="' + i + '"]').length > 0) {
                    $('tr.legend' + i).show();
                    $('fieldset.legend' + i).show();
                }
            }
        });
    </script>

    <div class="centered-text">
        <h1>-${title}목록-</h1>
    </div>

    <table>
        <tr class="legend5" style="display: none;">
            <fieldset class="legend5" style="display: none;">
                <span class="centered"> ★★★★★ SSR </span>
                <br>
                <c:forEach var="ServantList" items="${servant}">
                    <c:if test="${ServantList.rarity == 5}">
                        <div class="servant-info" data-rarity="${ServantList.rarity}">
                        <a href="${cp}/fgo/ServantDetail?id=${ServantList.id}"><img alt="서번트들" src="${ServantList.face}"> </a>
                        <br> <br>
                        <a href="${cp}/fgo/ServantDetail?id=${ServantList.id}">${ServantList.name}</a> 
                        <br>
                        </div>
                    </c:if>
                </c:forEach>
            </fieldset>
        </tr>

        <tr class="legend4" style="display: none;">
            <fieldset class="legend4" style="display: none;">
                <span class="centered"> ★★★★ SR </span>
                <br>
                <c:forEach var="ServantList" items="${servant}">
                    <c:if test="${ServantList.rarity == 4}">
                        <div class="servant-info" data-rarity="${ServantList.rarity}">
                             <a href="${cp}/fgo/ServantDetail?id=${ServantList.id}"><img alt="서번트들" src="${ServantList.face}"> </a>
                        <br> <br>
                        <a href="${cp}/fgo/ServantDetail?id=${ServantList.id}">${ServantList.name}</a> 
                        <br>
                        </div>
                    </c:if>
                </c:forEach>
            </fieldset>
        </tr>

        <tr class="legend3" style="display: none;">
            <fieldset class="legend3" style="display: none;">
               <span class="centered"> ★★★ R </span>
               <br>
                <c:forEach var="ServantList" items="${servant}">
                    <c:if test="${ServantList.rarity == 3}">
                        <div class="servant-info" data-rarity="${ServantList.rarity}">
                         <a href="${cp}/fgo/ServantDetail?id=${ServantList.id}"><img alt="서번트들" src="${ServantList.face}"> </a>
                        <br> <br>
                        <a href="${cp}/fgo/ServantDetail?id=${ServantList.id}">${ServantList.name}</a> 
                        <br>
                        </div>
                    </c:if>
                </c:forEach>
            </fieldset>
        </tr>

        <tr class="legend2" style="display: none;">
            <fieldset class="legend2" style="display: none;">
               <span class="centered"> ★★ UC </span> 
               <br>
                <c:forEach var="ServantList" items="${servant}">
                    <c:if test="${ServantList.rarity == 2}">
                        <div class="servant-info" data-rarity="${ServantList.rarity}">
                           <a href="${cp}/fgo/ServantDetail?id=${ServantList.id}"><img alt="서번트들" src="${ServantList.face}"> </a>
                        <br> <br>
                        <a href="${cp}/fgo/ServantDetail?id=${ServantList.id}">${ServantList.name}</a> 
                        <br>
                        </div>
                    </c:if>
                </c:forEach>
            </fieldset>
        </tr>

        <tr class="legend1" style="display: none;">
            <fieldset class="legend1" style="display: none;">
                 <span class="centered"> ★ C  </span>
                 <br>
                <c:forEach var="ServantList" items="${servant}">
                    <c:if test="${ServantList.rarity == 1}">
                        <div class="servant-info" data-rarity="${ServantList.rarity}">
                            <a href="${cp}/fgo/ServantDetail?id=${ServantList.id}"><img alt="서번트들" src="${ServantList.face}"> </a>
                        <br> <br>
                        <a href="${cp}/fgo/ServantDetail?id=${ServantList.id}">${ServantList.name}</a> 
                        <br>
                        </div>
                    </c:if>
                </c:forEach>
            </fieldset>
        </tr>

    </table>
</body>
</html>