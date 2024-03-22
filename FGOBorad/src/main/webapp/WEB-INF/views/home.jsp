<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" /><!-- el변수 cp에 경로저장 -->
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>									
    <link rel="stylesheet" href="${cp}/resources/Fgo.css">
    <title>Home</title>
</head>
<body>
<div class="centered-text">
    <h1>
        -Fate GrandOrder게시판-
    </h1>
</div>
	<div class="servantcard">서번트</div>
<table class="wholeClassCards">
    <tr>
        <td class="classCard"><a href="${cp}/fgo/ServantList?className=saber"><img alt="세이버" src="${cp}/resources/saber.jpg"></a></td>
        <td class="classCard"><a href="${cp}/fgo/ServantList?className=archer"><img alt="아쳐" src="${cp}/resources/archer.jpg"></a></td>
        <td class="classCard"><a href="${cp}/fgo/ServantList?className=lancer"><img alt="랜서" src="${cp}/resources/lancer.jpg"></a></td>
        <td class="classCard"><a href="${cp}/fgo/ServantList?className=rider"><img alt="라이더" src="${cp}/resources/rider.jpg"></a></td>
        <td class="classCard"><a href="${cp}/fgo/ServantList?className=caster"><img alt="캐스터" src="${cp}/resources/caster.jpg"></a></td>
        <td class="classCard"><a href="${cp}/fgo/ServantList?className=assassin"><img alt="어새신" src="${cp}/resources/assasin.jpg"></a></td>
        <td class="classCard"><a href="${cp}/fgo/ServantList?className=berserker"><img alt="버서커" src="${cp}/resources/berserker.jpg"></a></td>
    </tr>
</table>
<table class="wholeClassCards">
    <tr>
        <td class="classCard"><a href="${cp}/fgo/ServantList?className=shielder"><img alt="실더" src="${cp}/resources/shielder.jpg"></a></td>
        <td class="classCard"><a href="${cp}/fgo/ServantList?className=ruler"><img alt="룰러" src="${cp}/resources/ruler.jpg"></a></td>
        <td class="classCard"><a href="${cp}/fgo/ServantList?className=alterEgo"><img alt="얼터에고" src="${cp}/resources/alterego.jpg"></a></td>
        <td class="classCard"><a href="${cp}/fgo/ServantList?className=avenger"><img alt="어벤져" src="${cp}/resources/avenger.jpg"></a></td>
        <td class="classCard"><a href="${cp}/fgo/ServantList?className=moonCancer"><img alt="문캔서" src="${cp}/resources/mooncancer.jpg"></a></td>
        <td class="classCard"><a href="${cp}/fgo/ServantList?className=foreigner"><img alt="포리너" src="${cp}/resources/foreigner.jpg"></a></td>
        <td class="classCard"><a href="${cp}/fgo/ServantList?className=pretender"><img alt="프리텐더" src="${cp}/resources/pretender.jpg"></a></td>
        <td class="classCard"><a href="${cp}/fgo/ServantList?className=beast"><img alt="비스트" src="${cp}/resources/beast.jpg"></a></td>
    </tr>
</table>
</body>
</html>