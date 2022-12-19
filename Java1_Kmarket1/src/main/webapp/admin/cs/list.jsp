<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../_header.jsp"/>
<section id="csList">
	<c:choose>
	<c:when test="${group.equals('notice')}">
		<nav>
	        <h3>공지사항 목록</h3>
	        <p>HOME > 고객센터 ><strong>공지사항</strong></p>
	    </nav>
    </c:when>
	<c:when test="${group.equals('faq')}">
		<nav>
	        <h3>자주묻는질문 목록</h3>
	        <p>HOME > 고객센터 ><strong>자주묻는질문</strong></p>
	    </nav>
    </c:when>
	<c:when test="${group.equals('qna')}">
		<nav>
	        <h3>문의하기 목록</h3>
	        <p>HOME > 고객센터 ><strong>문의하기</strong></p>
	    </nav>
    </c:when>
    </c:choose>
    <select name="cate">
    	<option value="0">유형선택</option>
    	<option value="service">고객서비스</option>
    	<option value="deal">안전거래</option>
    	<option value="danger">위해상품</option>
    	<option value="lucky">이벤트당첨</option>
    </select>
    <table>
    	<tr>
    		<th><input type="checkbox" name="selectAll"></th>
    		<th>번호</th>
    		<th>유형</th>
    		<th>제목</th>
    		<th>조회</th>
    		<th>날짜</th>
    		<th>관리</th>
    	</tr>
    	<c:forEach var="arti" items="${articles}" varStatus="i">
    	<tr>
    		<td><input type="checkbox" name="select" value="${arti.no}"></td>
    		<td>${pageStartNum-i.index}</td>
    		<c:choose>
    			<c:when test="${arti.cate.equals('service')}">
    				<td>고객서비스</td>
    			</c:when>
    			<c:when test="${arti.cate.equals('deal')}">
    				<td>안전거래</td>
    			</c:when>
    			<c:when test="${arti.cate.equals('danger')}">
    				<td>위해상품</td>
    			</c:when>
    			<c:when test="${arti.cate.equals('lucky')}">
    				<td>이벤트당첨</td>
    			</c:when>
    		</c:choose>
    		<td><a href="/Java1_Kmarket1/admin/cs/view.do?no=${arti.no}&group=${group}">${arti.title}</a></td>
    		<td>${arti.hit}</td>
    		<td>${arti.rdate}</td>
    		<td>
    			<a href="#">수정</a>
    			<a href="#">삭제</a>
    		</td>
    	</tr>
    	</c:forEach>
    </table>
    <div class="page">
	    <c:choose>
	    <c:when test="${pageGroupStart gt 1 && cate != null}">
	    <a href="/Java1_Kmarket1/admin/cs/list.do?pg=${pageGroupStart-1}&cate=${cate}&group=${group}" class="prev">이전</a>
	    </c:when>
	    <c:when test="${pageGroupStart gt 1 && cate == null}">
	    <a href="/Java1_Kmarket1/admin/cs/list.do?pg=${pageGroupStart-1}&group=${group}" class="prev">이전</a>
	    </c:when>
	    </c:choose>
	    <c:forEach var="i" begin="${pageGroupStart}" end="${pageGroupEnd }">
	    <c:choose>
	    <c:when test="${cate != null}">
	    <a href="/Java1_Kmarket1/admin/cs/list.do?pg=${i}&cate=${cate}&group=${group}" class="num ${i==currentPage?'current':'off'} ${i==currentPage?'on':'off'}">${i}</a>
	    </c:when>
	    <c:when test="${cate == null}">
	    <a href="/Java1_Kmarket1/admin/cs/list.do?pg=${i}&group=${group}" class="num ${i==currentPage?'current':'off'} ${i==currentPage?'on':'off'}">${i}</a>
	    </c:when>
	    </c:choose>
	    </c:forEach>
	    <c:choose>
	    <c:when test="${pageGroupEnd lt lastPageNum && cate != null}">
	    <a href="/Java1_Kmarket1/admin/cs/list.do?pg=${pageGroupStart+1}&cate=${cate}&group=${group}" class="next">다음</a>
	    </c:when>
	    <c:when test="${pageGroupEnd lt lastPageNum && cate == null}">
	    <a href="/Java1_Kmarket1/admin/cs/list.do?pg=${pageGroupStart+1}&group=${group}" class="next">다음</a>
	    </c:when>
	    </c:choose>
    </div>
    <a class="btn btnDel">선택삭제</a>
    <a class="btn btnWrite">작성하기</a>
</section>
</main>
<jsp:include page="../_footer.jsp"/>
