<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>케이마켓::대한민국 1등 온라인 쇼핑몰</title>
    <link rel="shortcut icon" type="image/x-icon" href="../img/favicon.ico" />
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <link rel="stylesheet" href="/Java1_Kmarket1/css/member.css">
    <link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://kit.fontawesome.com/20962f3e4b.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
</head>
<body>
    <div id="wrapper">
        <header>
            <div class="top">
                <div>
                	<c:choose>
                	<c:when test="${sessUser == null}">
	                    <a href="/Java1_Kmarket1/member/login.do">로그인</a>
	                    <a href="/Java1_Kmarket1/member/join.do">회원가입</a>
                    </c:when>
                    <c:when test="${sessUser.level == '5' || sessUser.level == '7'}">
                    	<a href="/Java1_Kmarket1/admin/index.do">관리자</a>
                    	<a href="/Java1_Kmarket1/member/logout.do">로그아웃</a>
	                    <a href="#">마이페이지</a>
	                    <a href="/Java1_Kmarket1/product/cart.do">
	                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
	                        장바구니
	                    </a>
                    </c:when>
                    <c:otherwise>
                    	<a href="/Java1_Kmarket1/member/logout.do">로그아웃</a>
	                    <a href="#">마이페이지</a>
	                    <a href="/Java1_Kmarket1/product/cart.do">
	                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
	                        장바구니
	                    </a>
                    </c:otherwise>
                    </c:choose>
                </div>
            </div>
            <div class="logo">
                <div>
                    <a href="/Java1_Kmarket1/index.do">
                        <img src="/Java1_Kmarket1/member/img/header_logo.png" alt="로고">
                    </a>
                </div>
            </div>
        </header>