<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../_header.jsp"/>
    <section id="cs">
        <div class="faq">
            <nav>
                <div>
                    <p>
                        홈<span>></span>자주묻는 질문
                    </p>
                </div>
            </nav>
            <section class="list">
                <aside>
                    <h2>자주묻는 질문</h2>
                    <ul>
                        <li class="${cate.equals('member') ?'on':'off'}"><a href="#">회원</a></li>
                        <li class="${cate.equals('event') ?'on':'off'}"><a href="#">쿠폰/이벤트</a></li>
                        <li class="${cate.equals('order') ?'on':'off'}"><a href="#">주문/결제</a></li>
                        <li class="${cate.equals('deli') ?'on':'off'}"><a href="#">배송</a></li>
                        <li class="${cate.equals('cancle') ?'on':'off'}"><a href="#">취소/반품/교환</a></li>
                        <li class="${cate.equals('trip') ?'on':'off'}"><a href="#">여행/숙박/항공</a></li>
                        <li class="${cate.equals('safe') ?'on':'off'}"><a href="#">안전거래</a></li>
                    </ul>
                </aside>
                <article>
                    <nav>
                        <h1>회원</h1>
                        <h2>가장 자주 묻는 질문입니다.</h2>
                    </nav>
                    <div>
                        <h3>가입</h3>
                        <ul>
                            <li>
                                <a href="#">
                                    <span>Q.</span>개인회원과 법인회원에 차이가 있나요?
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span>Q.</span>개인회원과 법인회원에 차이가 있나요?
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span>Q.</span>개인회원과 법인회원에 차이가 있나요?
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span>Q.</span>개인회원과 법인회원에 차이가 있나요?
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span>Q.</span>개인회원과 법인회원에 차이가 있나요?
                                </a>
                            </li>
                            <li class="more">
                                <a href="#">더보기</a>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <h3>탈퇴</h3>
                        <ul>
                            <li>
                                <a href="#">
                                    <span>Q.</span>회원탈퇴 후 재가입이 가능한가요?
                                    
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span>Q.</span>회원탈퇴 후 재가입이 가능한가요?
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span>Q.</span>회원탈퇴 후 재가입이 가능한가요?
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span>Q.</span>회원탈퇴 후 재가입이 가능한가요?
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span>Q.</span>회원탈퇴 후 재가입이 가능한가요?
                                </a>
                            </li>
                            <li class="more">
                                <a href="#">더보기</a>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <h3>회원정보</h3>
                        <ul>
                            <li>
                                <a href="#">
                                    <span>Q.</span>회원정보를 수정하고 싶어요.
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span>Q.</span>회원정보를 수정하고 싶어요.
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span>Q.</span>회원정보를 수정하고 싶어요.
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span>Q.</span>회원정보를 수정하고 싶어요.
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span>Q.</span>회원정보를 수정하고 싶어요.
                                </a>
                            </li>
                            <li class="more">
                                <a href="#">더보기</a>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <h3>로그인</h3>
                        <ul>
                            <li>
                                <a href="#">
                                    <span>Q.</span>로그인에 문제가 있어요.
                                    
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span>Q.</span>로그인에 문제가 있어요.
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span>Q.</span>로그인에 문제가 있어요.
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span>Q.</span>로그인에 문제가 있어요.
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span>Q.</span>로그인에 문제가 있어요.
                                </a>
                            </li>
                            <li class="more">
                                <a href="#">더보기</a>
                            </li>
                        </ul>
                    </div>
                </article>
            </section>
        </div>
    </section>
<jsp:include page="../_footer.jsp"/>