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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="${cp}/resources/Fgo.css">
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
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

        // 이미지 URL을 JavaScript 변수로 가져옵니다.
        var ascension_1_url = "${ServantData.extraAssets.charaGraph.ascension._1}";
        var ascension_2_url = "${ServantData.extraAssets.charaGraph.ascension._2}";
        var ascension_3_url = "${ServantData.extraAssets.charaGraph.ascension._3}";
        var ascension_4_url = "${ServantData.extraAssets.charaGraph.ascension._4}";
        // 이미지를 쿠키에 저장하는 JavaScript 코드
        function encodeImageToBase64(url, cookieName) {
            var img = new Image();
            img.crossOrigin = 'Anonymous';
            img.onload = function() {
                var canvas = document.createElement('canvas');
                canvas.width = this.width;
                canvas.height = this.height;

                var ctx = canvas.getContext('2d');
                ctx.drawImage(this, 0, 0);

                var dataURL = canvas.toDataURL('image/png');

                // 쿠키 만료 날짜 설정 (7일 후)
                var expirationDate = new Date();
                expirationDate.setDate(expirationDate.getDate() + 7);
                document.cookie = cookieName + '=' + dataURL + '; expires=' + expirationDate.toUTCString() + '; path=/';
                
                // 이미지가 로드된 후에 쿠키의 존재 여부를 확인
                var isCookieExists = checkCookieExists(cookieName);
                if (isCookieExists) {
                    console.log(cookieName + ' 쿠키가 존재합니다.');
                } else {
                    console.log(cookieName + ' 쿠키가 존재하지 않습니다.');
                }
            };
            img.src = url;
        }
        
     // 쿠키의 존재 여부를 확인하는 함수
        function checkCookieExists(cookieName) {
            var cookies = document.cookie.split(';');
            for (var i = 0; i < cookies.length; i++) {
                var cookie = cookies[i].trim();
                if (cookie.startsWith(cookieName + '=')) {
                    return true;
                }
            }
            return false;
        }

        // 이미지를 쿠키에 저장할 때 호출
        encodeImageToBase64(ascension_1_url, 'ascension_1');
        encodeImageToBase64(ascension_2_url, 'ascension_2');
        encodeImageToBase64(ascension_3_url, 'ascension_3');
        encodeImageToBase64(ascension_4_url, 'ascension_4');
//         encodeImageToBase64(skill_1_url, 'skill_1');
//         encodeImageToBase64(skill_2_url, 'skill_2');
//         encodeImageToBase64(skill_3_url, 'skill_3');
        
        
    </script>
	<div class="centered-text">
	<a href="${cp}/"><img alt="로고" src="${cp}/resources/logo.jpg"></a>
	</div>
	<br>
	<br>
    <div class="centered-text">
        <h1>${ServantData.name}</h1>
    </div>
    
    <div id="imgg">
        <img class="img" src="${ServantData.extraAssets.charaGraph.ascension._1}">
        <img class="img" src="${ServantData.extraAssets.charaGraph.ascension._2}">
        <img class="img" src="${ServantData.extraAssets.charaGraph.ascension._3}">
        <img class="img" src="${ServantData.extraAssets.charaGraph.ascension._4}">
    </div>
    <br>
    <fieldset>
        <img src="${ServantData.skills.get(0).icon}">
        <br>
        ${ServantData.skills.get(0).name}
        <br>
        <img src="${ServantData.skills.get(1).icon}">
        <br>
        ${ServantData.skills.get(1).name}
        <br>
        <img src="${ServantData.skills.get(2).icon}">
        <br>
        ${ServantData.skills.get(2).name}
    </fieldset>
</body>
</html>