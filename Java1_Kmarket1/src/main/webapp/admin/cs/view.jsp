<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../_header.jsp"/>
<section id="csView">
	<c:choose>
	<c:when test="${group.equals('notice')}">
		<nav>
	        <h3>공지사항 보기</h3>
	        <p>HOME > 고객센터 ><strong>공지사항</strong></p>
	    </nav>
    </c:when>
	<c:when test="${group.equals('faq')}">
		<nav>
	        <h3>자주묻는질문 보기</h3>
	        <p>HOME > 고객센터 ><strong>자주묻는질문</strong></p>
	    </nav>
    </c:when>
	<c:when test="${group.equals('qna')}">
		<nav>
	        <h3>문의하기 보기</h3>
	        <p>HOME > 고객센터 ><strong>문의하기</strong></p>
	    </nav>
    </c:when>
    </c:choose>
    <table>
    	<tr>
    		<td>유형</td>
    		<c:choose>
    		<c:when test="${article.cate.equals('service')}">
    		<td>고객서비스</td>
    		</c:when>
    		<c:when test="${article.cate.equals('deal')}">
    		<td>안전거래</td>
    		</c:when>
    		<c:when test="${article.cate.equals('danger')}">
    		<td>위해상품</td>
    		</c:when>
    		<c:when test="${article.cate.equals('lucky')}">
    		<td>이벤트당첨</td>
    		</c:when>
    		</c:choose>
    	</tr>
    	<tr>
    		<td>제목</td>
    		<td>${article.title}</td>
    	</tr>
    	<tr>
    		<td>내용</td>
    		<td>${article.content}</td>
    	</tr>
    </table>
    <div>
    	<a href="/Java1_Kmarket1/admin/cs/list.do?group=${group}" class="btn btnList">목록</a>
    	<a href="/Java1_Kmarket1/admin/cs/modify.do?group=${group}"class="btn btnMod">수정</a>
    	<a class="btn btnDel2">삭제</a>
    </div>
</section>
</main>
<jsp:include page="../_footer.jsp"/>