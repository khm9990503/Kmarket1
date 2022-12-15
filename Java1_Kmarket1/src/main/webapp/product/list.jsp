<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./_header.jsp" />
   <section class="list">
       <!-- 제목, 페이지 네비게이션 -->
       <nav>
           <h1>상품목록</h1>
           <p>
               HOME >
               <span>dd</span>
                > 
                <strong>dd</strong>
           </p>
       </nav>
       <!-- 정렬 메뉴 -->
       <ul class="sort">
           <li><a href="#" class="on">판매많은순</a></li>
           <li><a href="#">낮은가격순</a></li>
           <li><a href="#">높은가격순</a></li>
           <li><a href="#">평점높은순</a></li>
           <li><a href="#">후기많은순</a></li>
           <li><a href="#">최근등록순</a></li>
       </ul>

       <!-- 상품목록 -->
       <table border="0">
       <c:forEach var="product" items="${products}">
           <tr>
               <td>
                   <a href="/Java1_Kmarket1/product/view.do?prodCate1=${product.prodCate1}&prodCate2=${product.prodCate2}&prodNo=${product.prodNo}" class="thumb">
                       <img src="${product.thumb1}" alt="상품이미지">
                   </a>
               </td>
               <td>
                   <h3 class="name">${product.prodName}</h3>
                   <a href="/Java1_Kmarket1/product/view.do?prodCate1=${product.prodCate1}&prodCate2=${product.prodCate2}&prodNo=${product.prodNo}" class="desc">${product.descript}</a>
               </td>
              
               <td>
                   <ul>
                       <li>
                       <c:choose>
                       	<c:when test="${product.discount == '0'}">
                           <ins class="dis-price">${product.price}</ins>
                        </c:when>
                       	<c:when test="${product.discount != '0'}">
                           <ins class="dis-price">${Math.round(product.price*(100-product.discount)/100)}</ins>
                        </c:when>
                       </c:choose>
                       </li>
                       <li>
                       <c:if test="${product.discount != '0'}">
                           <del class="org-price">${product.price}</del>
                           <span class="discount">${product.discount}%</span>
                       </li>
                       </c:if>
                       <li>
	                       <c:choose>
	                       	<c:when test="${product.delivery == '0' }">
	                       		<span class="free-delivery">무료배송</span>
	                       	</c:when>
	                       	<c:when test="${product.delivery != '0' }">
	                       		<span class="delivery">배송비 : ${product.delivery}원</span>
	                       	</c:when>
	                       </c:choose>
                       </li>
                   </ul>
               </td>
               <td>
                   <h4 class="seller"><i class="fas fa-home" aria-hidden="true"></i>&nbsp;${product.seller}</h4>
                   <h5 class="badge power">판매자등급</h5>
                   <h6 class="rating star1">상품평</h6>
               </td>
           </tr>
           </c:forEach>
       </table>
       <!-- 상품목록 페이지 번호 -->
        <div class="paging">
            <span class="prev">
            <c:if test="${pageGroupStart > 1}">
                <a href="/Java1_Kmarket1/product/list.do?prodCate1=${prodCate1}&prodCate2=${prodCate2}&pg=${pageGroupStart - 1}"><&nbsp;이전</a>
            </c:if>
            </span>
            <span class="num">
            <c:forEach var="num" begin="${pageGroupStart}" end="${pageGroupEnd}">
                <a href="/Java1_Kmarket1/product/list.do?prodCate1=${prodCate1}&prodCate2=${prodCate2}&pg=${num}" class="num ${num == currentPage ? 'current':'off'}">${num}</a>
            </c:forEach>
            </span>
            <span class="next">
            <c:if test="${pageGroupEnd < lastPageNum}">
                <a href="/Java1_Kmarket1/product/list.do?prodCate1=${prodCate1}&prodCate2=${prodCate2}&pg=${pageGroupEnd + 1}">다음&nbsp;></a>
            </c:if>
            </span>
        </div>
    </section>
</main>
<jsp:include page="./_footer.jsp" />