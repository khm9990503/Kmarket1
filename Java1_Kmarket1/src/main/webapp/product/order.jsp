<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>케이마켓::대한민국 1등 온라인 쇼핑몰</title>
    <link rel="shortcut icon" type="image/x-icon" href="../img/favicon.ico">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://kit.fontawesome.com/20962f3e4b.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/product.css">
</head>
<body>
    <div id="wrapper">
        <header>
            <div class="top">
                <div>
                    <a href="#">로그인</a>
                    <a href="#">회원가입</a>
                    <a href="#">마이페이지</a>
                    <a href="./cart.html"><i class="fa fa-shopping-cart" aria-hidden="true"></i>&nbsp;장바구니</a>
                </div>
            </div>
            <div class="logo">
                <div>
                    <a href="#">
                        <img src="../img/header_logo.png" alt="로고">
                    </a>
                    <form action="#">
                        <input type="text" name="keyword">
                        <button><i class="fa fa-search"></i></button>
                    </form>
                </div>
            </div>
            <div class="menu">
                <div>
                    <ul>
                        <li><a href="#">히트상품</a></li>
                        <li><a href="#">추천상품</a></li>
                        <li><a href="#">최신상품</a></li>
                        <li><a href="#">인기상품</a></li>
                        <li><a href="#">할인상품</a></li>
                    </ul>
                    <ul>
                        <li><a href="#">쿠폰존</a></li>
                        <li><a href="#">사용후기</a></li>
                        <li><a href="#">개인결제</a></li>
                        <li><a href="#">고객센터</a></li>
                        <li><a href="#">FAQ</a></li>
                    </ul>
                </div>
            </div>
        </header>
        <main id="product">
            <aside>
                <ul class="category">
                    <li><i class="fa fa-bars" aria-hidden="true"></i>카테고리</li>
                    <li>
                        <a href="#"><i class="fas fa-tag" aria-hidden="true"></i>브랜드패션</a>
                        <ol>
                            <li><a href="#">브랜드 여성의류</a></li>
                            <li><a href="#">브랜드 남성의류</a></li>
                            <li><a href="#">브랜드 진/캐쥬얼</a></li>
                            <li><a href="#">브랜드 신발/가방</a></li>
                            <li><a href="#">브랜드 쥬얼리/시계</a></li>
                            <li><a href="#">브랜드 아웃도어</a></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#"><i class="fas fa-tshirt" aria-hidden="true"></i>패션·의류·잡화·뷰티</a>
                        <ol>
                            <li><a href="#">여성의류</a></li>
                            <li><a href="#">남성의류</a></li>
                            <li><a href="#">언더웨어</a></li>
                            <li><a href="#">신발</a></li>
                            <li><a href="#">가방/잡화</a></li>
                            <li><a href="#">쥬얼리/시계</a></li>
                            <li><a href="#">화장품/향수</a></li>
                            <li><a href="#">바디/헤어</a></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#"><i class="fas fa-baby"></i>유아동</a>
                        <ol>
                            <li><a href="#">출산/육아</a></li>
                            <li><a href="#">장난감/완구</a></li>
                            <li><a href="#">유아동 의류</a></li>
                            <li><a href="#">유아동 신발/잡화</a></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#"><i class="fas fa-utensils"></i>식품·생필품</a>
                        <ol>
                            <li><a href="#">신선식품</a></li>
                            <li><a href="#">가공식품</a></li>
                            <li><a href="#">건강식품</a></li>
                            <li><a href="#">커피/음료</a></li>
                            <li><a href="#">생필품</a></li>
                            <li><a href="#">바디/헤어</a></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#"><i class="fas fa-home"></i>홈데코·문구·취미·반려</a>
                        <ol>
                            <li><a href="#">가구/DIY</a></li>
                            <li><a href="#">침구/커튼</a></li>
                            <li><a href="#">조명/인테리어</a></li>
                            <li><a href="#">생활용품</a></li>
                            <li><a href="#">주방용품</a></li>
                            <li><a href="#">문구/사무용품</a></li>
                            <li><a href="#">사무기기</a></li>
                            <li><a href="#">악기/취미</a></li>
                            <li><a href="#">반려동물용품</a></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#"><i class="fas fa-laptop"></i>컴퓨터·가전·디지털</a>
                        <ol>
                            <li><a href="#">노트북/PC</a></li>
                            <li><a href="#">모니터/프린터</a></li>
                            <li><a href="#">PC주변기기</a></li>
                            <li><a href="#">모바일/태블릿</a></li>
                            <li><a href="#">카메라</a></li>
                            <li><a href="#">게임</a></li>
                            <li><a href="#">영상가전</a></li>
                            <li><a href="#">주방가전</a></li>
                            <li><a href="#">계절가전</a></li>
                            <li><a href="#">생활/미용가전</a></li>
                            <li><a href="#">음향가전</a></li>
                            <li><a href="#">건강가전</a></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#"><i class="fas fa-heart"></i>스포츠·건강·렌탈</a>
                        <ol>
                            <li><a href="#">스포츠의류/운동화</a></li>
                            <li><a href="#">휘트니스/수영</a></li>
                            <li><a href="#">구기/라켓</a></li>
                            <li><a href="#">골프</a></li>
                            <li><a href="#">자전거/보드/기타레저</a></li>
                            <li><a href="#">캠핑/낚시</a></li>
                            <li><a href="#">등산/아웃도어</a></li>
                            <li><a href="#">건강/의료용품</a></li>
                            <li><a href="#">건강식품</a></li>
                            <li><a href="#">렌탈서비스</a></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#"><i class="fas fa-car"></i>자동차·공구</a>
                        <ol>
                            <li><a href="#">자동차용품</a></li>
                            <li><a href="#">공구/안전/산업용품</a></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#"><i class="fas fa-book"></i>여행·도서·티켓·e쿠폰</a>
                        <ol>
                            <li><a href="#">여행/항공권</a></li>
                            <li><a href="#">도서/음반/e교육</a></li>
                            <li><a href="#">공연티켓</a></li>
                            <li><a href="#">e쿠폰</a></li>
                            <li><a href="#">상품권</a></li>
                        </ol>
                    </li>
                </ul>
            </aside>
            <section class="order">
                <!-- 제목, 페이지 네비게이션 -->
                <nav>
                    <h1>주문결제</h1>
                    <p>
                        HOME >
                        <span>장바구니</span>
                         > 
                         <strong>주문결제</strong>
                    </p>
                </nav>
                <form action="#">
                    <table>
                        <tr>
                            <th>상품명</th>
                            <th>총수량</th>
                            <th>판매가</th>
                            <th>배송비</th>
                            <th>소계</th>
                        </tr>
                        <tr class="empty"><td colspan="7">장바구니에 상품이 없습니다.</td></tr>
                        <tr>
                            <td>
                                <article>
                                    <a href="./view.html"><img src="https://via.placeholder.com/80x80" alt></a>
                                    <div>
                                        <h2><a href="./view.html">상품명</a></h2>
                                        <p>상품설명</p>
                                    </div>
                                </article>
                            </td>
                            <td>1</td>
                            <td>27,000</td>
                            <td>무료배송</td>
                            <td>27,000</td>
                        </tr>
                        <tr>
                            <td>
                                <article>
                                    <a href="./view.html"><img src="https://via.placeholder.com/80x80" alt></a>
                                    <div>
                                        <h2><a href="./view.html">상품명</a></h2>
                                        <p>상품설명</p>
                                    </div>
                                </article>
                            </td>
                            <td>1</td>
                            <td>27,000</td>
                            <td>무료배송</td>
                            <td>27,000</td>
                        </tr>
                        <tr>
                            <td>
                                <article>
                                    <a href="./view.html"><img src="https://via.placeholder.com/80x80" alt></a>
                                    <div>
                                        <h2><a href="./view.html">상품명</a></h2>
                                        <p>상품설명</p>
                                    </div>
                                </article>
                            </td>
                            <td>1</td>
                            <td>27,000</td>
                            <td>무료배송</td>
                            <td>27,000</td>
                        </tr>
                    </table>
                    <div class="final">
                        <h2>최종결제 정보</h2>
                        <table border="0">
                            <tr>
                                <td>총</td>
                                <td>2 건</td>
                            </tr>
                            <tr>
                                <td>상품금액</td>
                                <td>27,000</td>
                            </tr>
                            <tr>
                                <td>할인금액</td>
                                <td>-1,000</td>
                            </tr>
                            <tr>
                                <td>배송비</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td>포인트 할인</td>
                                <td>-1000</td>
                            </tr>
                            <tr>
                                <td>전체주문금액</td>
                                <td>25,000</td>
                            </tr>
                        </table>
                        <input type="button" name="" value="결제하기">
                    </div>
                     <!-- 배송정보 -->
                    <article class="delivery">
                        <h1>배송정보</h1>                          
                        <table>
                            <tr>
                                <td>주문자</td>
                                <td><input type="text" name="orderer" /></td>
                            </tr>
                            <tr>
                                <td>휴대폰</td>
                                <td>
                                    <input type="text" name="hp" />
                                    <span>- 포함 입력</span>
                                </td>
                            </tr>
                            <tr>
                                <td>우편번호</td>
                                <td>
                                    <input type="text" name="zip"/>
                                    <input type="button" value="검색"/>
                                </td>
                            </tr>
                            <tr>
                                <td>기본주소</td>
                                <td><input type="text" name="addr1"/></td>
                            </tr>
                            <tr>
                                <td>상세주소</td>
                                <td><input type="text" name="addr2"/></td>
                            </tr>
                        </table>
                    </article>
    
                    <!-- 할인정보 -->
                    <article class="discount">
                        <h1>할인정보</h1>
                        <div>
                            <p>현재 포인트 : <span>7200</span>점</p>
                            <label>
                                <input type="text" name="point" />점
                                <input type="button" value="적용"/>
                            </label>
                            <span>포인트 5,000점 이상이면 현금처럼 사용 가능합니다.</span>
                        </div>
                    </article>
    
                    <!-- 결제방법 -->
                    <article class="payment">
                        <h1>결제방법</h1>
                        <div>
                            <span>신용카드</span>
                            <p>
                                <label><input type="radio" name="payment" value="type1"/>신용카드 결제</label>
                                <label><input type="radio" name="payment" value="type2"/>체크카드 결제</label>                                
                            </p>
                        </div>
                        <div>
                            <span>계좌이체</span>
                            <p>
                                <label><input type="radio" name="payment" value="type3"/>실시간 계좌이체</label>
                                <label><input type="radio" name="payment" value="type4"/>무통장 입금</label>                                
                            </p>
                        </div>
                        <div>
                            <span>기타</span>
                            <p>
                                <label><input type="radio" name="payment" value="type3"/>휴대폰결제</label>
                                <label>
                                    <input type="radio" name="payment" value="type4"/>카카오페이
                                    <img src="../img/ico_kakaopay.gif" alt="카카오페이"/>
                                </label>                                
                            </p>
                        </div>
                    </article>
    
                    <!-- 경고 -->
                    <article class="alert">
                        <ul>
                            <li><span>케이마켓의 모든 판매자는 안전거래를 위해 구매금액, 결제수단에 상관없이 모든거래에 대하여 케이마켓 유한책임회사의 구매안전서비스(에스크로)를 제공하고 있습니다.</span></li>
                            <li><span>케이마켓 유한책임회사의 전자금융거래법에 의해 결제대금예치업 등록번호는 02-006-00008 입니다.</span></li>
                            <li><span>등록여부는 금융감독원 홈페이지(www.fss.or.kr)의 업무자료>인허가업무안내>전자금융업등록현황에서 확인하실수 있습니다.</span></li>
                        </ul>
                    </article>
                </form>
            </section>
        </main>
        <footer>
            <ul>
                <li><a href="#">회사소개</a></li>
                <li><a href="#">서비스이용약관</a></li>
                <li><a href="#">개인정보처리방침</a></li>
                <li><a href="#">전자금융거래약관</a></li>
            </ul>
            <div>
                <p>
                    <img src="../img/footer_logo.png" alt="로고">
                </p>
                <p>
                    <strong>(주)KMARKET</strong>
                    <br>
                      부산시 강남구 테헤란로 152 (역삼동 강남파이낸스센터)
                    <br>
                      대표이사 : 홍길동
                    <br>
                      사업자등록번호 : 220-81-83676 사업자정보확인
                    <br>
                      통신판매업신고 : 강남 10630호 Fax : 02-589-8842
                </p>
                <p>
                    <strong>고객센터</strong>
                    <br>
                      Tel : 1234-5678 (평일 09:00~18:00)
                    <br>
                      스마일클럽/SVIP 전용 : 1522-5700 (365일 09:00~18:00)
                    <br>
                      경기도 부천시 원미구 부일로 223(상동) 투나빌딩 6층
                    <br>
                      Fax : 051-123-4567 | Mail : kmarket@kmarket.co.kr
                </p>
            </div>
        </footer>
        <button type="button" id="top">상단이동</button>
    </div>
</body>
</html>