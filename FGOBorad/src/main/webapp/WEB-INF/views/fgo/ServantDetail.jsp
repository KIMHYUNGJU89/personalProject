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
//         $(function(){
//         	var myDiv = $('#saber');
//         	myDiv.on('click',function(){
//         		myDiv.animate({
//         			'width':'300px',
//         			'height':'500px',
//         		},2000,'linear');
//         		myDiv.animate({
//         			'width':'150px',
//         			'height':'300px',
//         		},1000,'swing');
//         		myDiv.animate({
//         			'width':'15px',
//         			'height':'300px',
//         		},4000,'linear');
//         	});
//         });
    </script>

    <div class="centered-text">
        <h1>${ServantData.name}</h1>
    </div>
    
    <div id=imgg>
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