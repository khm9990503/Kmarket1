<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="./_header.jsp"/>
        <main>
            <!--사이드-->
            <aside>
                <!--카테고리-->
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
                <!--베스트상품-->
                <article class="best">
                    <h1>
                        <i class="fas fa-crown" aria-hidden="true"></i>베스트상품
                    </h1>
                    <ol>
                        <li>
                            <a href="#">
                                <div class="thumb">
                                    <i>1</i>
                                    <img src="https://via.placeholder.com/230" alt="item1">
                                </div>
                                <h2>상품명</h2>
                                <div class="org_price">
                                    <del>30,000</del>
                                    <span>10%</span>
                                </div>
                                <div class="dis_price">
                                    <ins>27,000</ins>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="thumb">
                                    <i>2</i>
                                    <img src="https://via.placeholder.com/50" alt="item2">
                                </div>
                                <article>
                                    <h2>상품명</h2>
                                    <div class="org_price">
                                        <del>30,000</del>
                                        <span>10%</span>
                                    </div>
                                    <div class="dis_price">
                                        <ins>27,000</ins>
                                    </div>
                                </article>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="thumb">
                                    <i>3</i>
                                    <img src="https://via.placeholder.com/50" alt="item3">
                                </div>
                                <article>
                                    <h2>상품명</h2>
                                    <div class="org_price">
                                        <del>30,000</del>
                                        <span>10%</span>
                                    </div>
                                    <div class="dis_price">
                                        <ins>27,000</ins>
                                    </div>
                                </article>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="thumb">
                                    <i>4</i>
                                    <img src="https://via.placeholder.com/50" alt="item4">
                                </div>
                                <article>
                                    <h2>상품명</h2>
                                    <div class="org_price">
                                        <del>30,000</del>
                                        <span>10%</span>
                                    </div>
                                    <div class="dis_price">
                                        <ins>27,000</ins>
                                    </div>
                                </article>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="thumb">
                                    <i>5</i>
                                    <img src="https://via.placeholder.com/50" alt="item5">
                                </div>
                                <article>
                                    <h2>상품명</h2>
                                    <div class="org_price">
                                        <del>30,000</del>
                                        <span>10%</span>
                                    </div>
                                    <div class="dis_price">
                                        <ins>27,000</ins>
                                    </div>
                                </article>
                            </a>
                        </li>
                    </ol>
                </article>
            </aside>
            <section>
                <!--슬라이더-->
                <section class="Slider">
                    <div class="slider">
                        <div><a href="#"><img src="https://via.placeholder.com/985x447" alt="item1"></a></div>
                        <div><a href="#"><img src="https://via.placeholder.com/985x447" alt="item2"></a></div>
                        <div><a href="#"><img src="https://via.placeholder.com/985x447" alt="item3"></a></div>
                        <div><a href="#"><img src="https://via.placeholder.com/985x447" alt="item4"></a></div>
                        <div><a href="#"><img src="https://via.placeholder.com/985x447" alt="item5"></a></div>
                    </div>
                </section>
                <!--히트상품-->
                <section class="hit">
                    <h3>
                        <span>히트상품</span>
                    </h3>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                </section>
                <!--추천상품-->
                <section class="recommend">
                    <h3>
                        <span>추천상품</span>
                    </h3>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                </section>
                <!--최신상품-->
                <section class="new">
                    <h3>
                        <span>최신상품</span>
                    </h3>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                </section>
                <!--할인상품-->
                <section class="discount">
                    <h3>
                        <span>할인상품</span>
                    </h3>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                    <article>
                        <a href="#">
                            <div class="thumb">
                                <img src="https://via.placeholder.com/230x230" alt="item1">
                            </div>
                            <h2>상품명</h2>
                            <p>간단한 상품 설명</p>
                            <div class="org_price">
                                <del>30,000</del>
                                <span>10%</span>
                            </div>
                            <div class="dis_price">
                                <ins>27,000</ins>
                                <span class="free">무료배송</span>
                            </div>
                        </a>
                    </article>
                </section>
            </section>
        </main>
<jsp:include page="./_footer.jsp"/>