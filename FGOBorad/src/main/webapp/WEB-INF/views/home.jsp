<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<!-- el변수 cp에 경로저장 -->
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<link rel="stylesheet" href="${cp}/resources/Fgo.css">
<title>Home</title>

</head>
<body>
	<script>
		// 	눌렀을때 바로나타나고 사라지게 하는 jquery
		//     $(document).ready(function() {
		//         // servantcard를 클릭했을 때 이벤트 처리
		//         $(".servantcard").click(function() {
		//             $(".wholeClassCards").toggle(); // toggle 함수를 사용하여 표시/비표시를 번갈아 변경
		//         });
		//     });
		$(document).ready(function() {
			// servantcard를 클릭했을 때 이벤트 처리
			$("#wholeinfo").click(function() {
				// 이미지가 나타나 있는지 확인하고 나타나지 않았으면 fadeIn(), 나타나 있으면 fadeOut() 적용
				if ($(".infos").is(":hidden")) {
					$(".infos").slideDown(); // 이미지가 아래서부터 위로 슬라이드하면서 나타나는 애니메이션
				} else {
					$(".infos").slideUp(); // 이미지가 위에서부터 아래로 슬라이드하면서 사라지는 애니메이션
					$(".wholeClassCards").fadeOut(); // 높이를 서서히 변경하여 요소를 사라지게 함
				}
			});
			$("#servantcard").click(function() {
				// 이미지가 나타나 있는지 확인하고 나타나지 않았으면 fadeIn(), 나타나 있으면 fadeOut() 적용
				if ($(".wholeClassCards").is(":hidden")) {
					$(".wholeClassCards").fadeIn(); 
				} else {
					$(".wholeClassCards").fadeOut(); // 높이를 서서히 변경하여 요소를 사라지게 함
				}
			});
		});
	</script>
	<div class="centered-text">
		<a href="${cp}/"><img alt="로고" src="${cp}/resources/logo.jpg"></a>
		<br>
		<h1 id="title_text">-Fate/GrandOrder InfoBoard-</h1>
		<br> <br>
	</div>
	<div class="items" id="wholeinfo">
		<h3 class="info">정보 펼치기 ・ 접기</h3>
	</div>
	<div class="infos" id="servantcard">
		<h3 class="info">등장 서번트</h3>
	</div>
	<table class="wholeClassCards">
		<tr>
			<td class="classCard"><a
				href="${cp}/fgo/ServantList?className=saber"><img alt="세이버"
					src="${cp}/resources/saber.jpg"></a></td>
			<td class="classCard"><a
				href="${cp}/fgo/ServantList?className=archer"><img alt="아쳐"
					src="${cp}/resources/archer.jpg"></a></td>
			<td class="classCard"><a
				href="${cp}/fgo/ServantList?className=lancer"><img alt="랜서"
					src="${cp}/resources/lancer.jpg"></a></td>
			<td class="classCard"><a
				href="${cp}/fgo/ServantList?className=rider"><img alt="라이더"
					src="${cp}/resources/rider.jpg"></a></td>
			<td class="classCard"><a
				href="${cp}/fgo/ServantList?className=caster"><img alt="캐스터"
					src="${cp}/resources/caster.jpg"></a></td>
			<td class="classCard"><a
				href="${cp}/fgo/ServantList?className=assassin"><img alt="어새신"
					src="${cp}/resources/assasin.jpg"></a></td>
			<td class="classCard"><a
				href="${cp}/fgo/ServantList?className=berserker"><img alt="버서커"
					src="${cp}/resources/berserker.jpg"></a></td>
		</tr>
	</table>
	<table class="wholeClassCards">
		<tr>
			<td class="classCard"><a
				href="${cp}/fgo/ServantList?className=shielder"><img alt="실더"
					src="${cp}/resources/shielder.jpg"></a></td>
			<td class="classCard"><a
				href="${cp}/fgo/ServantList?className=ruler"><img alt="룰러"
					src="${cp}/resources/ruler.jpg"></a></td>
			<td class="classCard"><a
				href="${cp}/fgo/ServantList?className=alterEgo"><img alt="얼터에고"
					src="${cp}/resources/alterego.jpg"></a></td>
			<td class="classCard"><a
				href="${cp}/fgo/ServantList?className=avenger"><img alt="어벤져"
					src="${cp}/resources/avenger.jpg"></a></td>
			<td class="classCard"><a
				href="${cp}/fgo/ServantList?className=moonCancer"><img alt="문캔서"
					src="${cp}/resources/mooncancer.jpg"></a></td>
			<td class="classCard"><a
				href="${cp}/fgo/ServantList?className=foreigner"><img alt="포리너"
					src="${cp}/resources/foreigner.jpg"></a></td>
			<td class="classCard"><a
				href="${cp}/fgo/ServantList?className=pretender"><img alt="프리텐더"
					src="${cp}/resources/pretender.jpg"></a></td>
		</tr>
	</table>
	<table class="wholeClassCards" id="beast">
		<tr>
			<td class="classCard"><a
				href="${cp}/fgo/ServantList?className=beast"><img alt="비스트"
					src="${cp}/resources/beast.jpg"></a></td>
		</tr>
	</table>
	<div class="infos">
		<h3 class="info">진행중인 이벤트</h3>
	</div>
<!-- 	<img class="E7CRAuWn" width="30%" src="//i.namu.wiki/i/HOuQneZvV_9eaTyCnt_zFATXJaQ5u-ki6iOJWwunaHydb836pQ-UOyObjOrTotW91oCVeRdFmjuViJbsDsNcyf2BfsFs50jICuhXqRUHI7mRmiHrDQKBrFadZRXrLMRCzgA4Ildx7Bqi7NBnblV8UQ.webp" data-filesize="87650" data-src="//i.namu.wiki/i/HOuQneZvV_9eaTyCnt_zFATXJaQ5u-ki6iOJWwunaHydb836pQ-UOyObjOrTotW91oCVeRdFmjuViJbsDsNcyf2BfsFs50jICuhXqRUHI7mRmiHrDQKBrFadZRXrLMRCzgA4Ildx7Bqi7NBnblV8UQ.webp" alt="FGO 이드 메인 배너" data-doc="/jump/goSt5ypT%2BIKrQ97CwmQr%2BuVYNelg%2FgCBQrBPOKdRpsD1jJLED2T%2F2iQD3BDNucgk57gDP%2FrtoXfSnBbtTSzxRw%3D%3D" data-v-eaa74fcd="" loading="lazy"> -->
</body>
	<div class="infos" id="community">
		<h3 class="info">커뮤로가기</h3>
	</div>
</html>