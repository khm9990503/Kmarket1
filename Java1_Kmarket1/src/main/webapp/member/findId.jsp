<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>케이마켓::대한민국 1등 온라인 쇼핑몰</title>
    <link rel="shortcut icon" type="image/x-icon" href="../img/favicon.ico" />
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <link rel="stylesheet" href="./css/member.css">
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
                    <a href="./member/login.html">로그인</a>
                    <a href="#">회원가입</a>
                    <a href="#">마이페이지</a>
                    <a href="#">
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>&nbsp;장바구니
                    </a>
                </div>
            </div>
            <div class="logo">
                <div>
                    <a href="../index.html">
                        <img src="../img/header_logo.png" alt="로고">
                    </a>
                </div>
            </div>
        </header>
        <main id="member">
            <div class="findId">
                <nav>
                    <h1>아이디 찾기</h1>
                    <p>
                        HOME > 로그인 > 
                        <strong>아이디찾기</strong>
                    </p>
                </nav>
                <form action="#" method="post">
                    <section>
                        <table>
                            <caption>이메일로 찾기</caption>
                            <tbody>
                                <tr>
                                    <th>
                                        <span class="essential">*</span>이름
                                    </th>
                                    <td><input type="text" name="name" placeholder="이름 입력"/></td>
                                </tr>
                                <tr class="email">
                                    <th>
                                        <span class="essential">*</span>이메일
                                    </th>
                                    <td>
                                        <div>
                                            <input type="email" name="email" placeholder="이메일 입력"/>
                                            <span class="resultEmail"></span>
                                            <button type="button" class="btnAuth" id="btnEmail">인증번호 받기</button>
                                        </div>
                                        <div class="auth">
                                            <input type="text" name="auth" placeholder="인증번호 입력"/>
                                            <button type="button" class="btnConfirm" id="btnEmailConfirm">확인</button>
                                        </div>
                                    </td>
                                </tr>            
                            </tbody>
                        </table>
                    </section>

                    <p class="explain">
                        회원가입시 이메일 주소와 입력한 이메일 주소가 같아야, 인증번호를 받을 수 있습니다.<br>
                        인증번호를 입력 후 <strong>아이디찾기</strong> 버튼을 누르세요.
                    </p>

                    <div class="findIdNext">
                        <a href="#" class="btn btnNext">아이디 찾기</a>
                    </div>
                </form>
            </div>
        </main>
        <footer>
            <ul>
                <li>
                    <a href="#">회사소개</a>
                </li>
                <li>
                    <a href="#">서비스이용약관</a>
                </li>
                <li>
                    <a href="#">개인정보처리방침</a>
                </li>
                <li>
                    <a href="#">전자금융거래약관</a>
                </li>
            </ul>
            <div>
                <p>
                    <img src="../img/footer_logo.png" alt="로고">
                </p>
                <p>
                    <strong>(주)KMARKET</strong>
                    <br/>
                    부산시 강남구 테헤란로 152 (역삼동 강남파이낸스센터)
                    <br/>
                    대표이사 : 홍길동
                    <br/>
                    사업자등록번호 : 220-81-83676 사업자정보확인
                    <br/>
                    통신판매업신고 : 강남 10630호 Fax : 02-589-8842
                </p>
                <p>
                    <strong>고객센터</strong>
                    <br/>
                    Tel : 1234-5678 (평일 09:00~18:00)
                    <br/>
                    스마일클럽/SVIP 전용 : 1522-5700 (365일 09:00~18:00)
                    <br/>
                    경기도 부천시 원미구 부일로 223(상동) 투나빌딩 6층
                    <br/>
                    Fax : 051-123-4567 | Mail : kmarket@kmarket.co.kr
                    <br/>
                </p>
            </div>
        </footer>
    </div>
</body>
</html>