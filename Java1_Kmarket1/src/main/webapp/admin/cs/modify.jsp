<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../_header.jsp"/>
<section id="csModify">
	<c:choose>
	<c:when test="${group.equals('notice')}">
		<nav>
	        <h3>공지사항 수정</h3>
	        <p>HOME > 고객센터 ><strong>공지사항</strong></p>
	    </nav>
    </c:when>
	<c:when test="${group.equals('faq')}">
		<nav>
	        <h3>자주묻는질문 수정</h3>
	        <p>HOME > 고객센터 ><strong>자주묻는질문</strong></p>
	    </nav>
    </c:when>
	<c:when test="${group.equals('qna')}">
		<nav>
	        <h3>문의하기 수정</h3>
	        <p>HOME > 고객센터 ><strong>문의하기</strong></p>
	    </nav>
    </c:when>
    </c:choose>
    <article>
        <form action="/Java1_Kmarket1/admin/cs/modify.do" method="post">
       	<input type="hidden" name="group" value="${group}">
       	<input type="hidden" name="uid" value="uid">
       	<input type="hidden" name="no" value="${no}">
           <table>
               <tr>
                   <td>유형</td>
                   <td>
	                   <select name="cate">
	                   		<option value="0">유형 선택</option>
	                   		<option value="service" ${article.cate.equals('service')?'selected':''}>고객서비스</option>
	                   		<option value="deal" ${article.cate.equals('deal')?'selected':''}>안전거래</option>
	                   		<option value="danger" ${article.cate.equals('danger')?'selected':''}>위해상품</option>
	                   		<option value="lucky" ${article.cate.equals('lucky')?'selected':''}>이벤트당첨</option>
	                   </select>
                   </td>
               </tr>
               <tr>
                   <td>제목</td>
                   <td>
                       <input type="text" name="title" value="${article.title}">
                   </td>
               </tr>
               <tr>
                   <td>내용</td>
                   <td>
                       <textarea name="content">${article.content}</textarea>
                   </td>
               </tr>
           </table>
           <div>
               <a href="/Java1_Kmarket1/admin/cs/view.do?group=${group}&no=${article.no}" class="btn btnList">취소하기</a>
               <input type="submit" class="btn btnSubmit" value="등록하기">
           </div>
       </form>
   </article>
</section>
</main>
<jsp:include page="../_footer.jsp"/>