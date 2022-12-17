<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../_header.jsp"/>
    <section id="cs">
        <div class="qna">
            <nav>
                <div>
                    <p>
                        홈<span>></span>문의하기
                    </p>
                </div>
            </nav>
            <section class="write">
                <aside>
                    <h2>문의하기</h2>
                    <ul>
                        <li class="${cate.equals('member') ?'on':'off'}"><a href="/Java1_Kmarket1/cs/qna/list.do?cate=member">회원</a></li>
                        <li class="${cate.equals('event') ?'on':'off'}"><a href="/Java1_Kmarket1/cs/qna/list.do?cate=event">쿠폰/이벤트</a></li>
                        <li class="${cate.equals('order') ?'on':'off'}"><a href="/Java1_Kmarket1/cs/qna/list.do?cate=order">주문/결제</a></li>
                        <li class="${cate.equals('deli') ?'on':'off'}"><a href="/Java1_Kmarket1/cs/qna/list.do?cate=deli">배송</a></li>
                        <li class="${cate.equals('cancle') ?'on':'off'}"><a href="/Java1_Kmarket1/cs/qna/list.do?cate=cancle">취소/반품/교환</a></li>
                        <li class="${cate.equals('trip') ?'on':'off'}"><a href="/Java1_Kmarket1/cs/qna/list.do?cate=trip">여행/숙박/항공</a></li>
                        <li class="${cate.equals('safe') ?'on':'off'}"><a href="/Java1_Kmarket1/cs/qna/list.do?cate=safe">안전거래</a></li>
                    </ul>
                </aside>
                <article>
                    <form action="/Java1_Kmarket1/cs/qna/write.do" method="post">
                    	<input type="hidden" name="group" value="qna">
                    	<input type="hidden" name="cate" value="${cate}">
                    	<input type="hidden" name="uid" value="uid">
                        <table>
                            <tr>
                                <td>문의유형</td>
                                <td>
                                    <select name="cate2">
                                        <option value="0">선택</option>
                                        <c:forEach var="arCa2" items="${artiCate2s}">
                                        <option value="${arCa2.artiCate2}">${arCa2.c2Name}</option>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>문의제목</td>
                                <td>
                                    <input type="text" name="title" placeholder="제목을 입력하세요.">
                                </td>
                            </tr>
                            <tr>
                                <td>문의내용</td>
                                <td>
                                    <textarea name="content" placeholder="내용을 입력하세요."></textarea>
                                </td>
                            </tr>
                        </table>
                        <div>
                            <a href="/Java1_Kmarket1/cs/qna/list.do?cate=${cate}" class="btnList">취소하기</a>
                            <input type="submit" class="btnSubmit" value="등록하기">
                        </div>
                    </form>
                </article>
            </section>
        </div>
    </section>
<jsp:include page="../_footer.jsp"/>