<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./_header.jsp" />
   <section class="list">
       <!-- 제목, 페이지 네비게이션 -->
       <nav>
           <h1>상품목록</h1>
           <p>
               HOME >
               <c:if test="${prodCate1 eq '10'}"><span>브랜드패션</span></c:if>
               <c:if test="${prodCate1 eq '11'}"><span>패션·의류·잡화·뷰티</span></c:if>
               <c:if test="${prodCate1 eq '12'}"><span>유아동</span></c:if>
               <c:if test="${prodCate1 eq '13'}"><span>식품·생필품</span></c:if>
               <c:if test="${prodCate1 eq '14'}"><span>홈데코·문구·취미·반려</span></c:if>
               <c:if test="${prodCate1 eq '15'}"><span>컴퓨터·디지털·가전</span></c:if>
               <c:if test="${prodCate1 eq '16'}"><span>스포츠·건강·렌탈</span></c:if>
               <c:if test="${prodCate1 eq '17'}"><span>자동차·공구</span></c:if>
               <c:if test="${prodCate1 eq '18'}"><span>여행·도서·티켓·e쿠폰</span></c:if>
                > 
               <c:if test="${prodCate1 eq '10' and prodCate2 eq '10'}"><strong>브랜드 여성의류</strong></c:if>
               <c:if test="${prodCate1 eq '10' and prodCate2 eq '11'}"><strong>브랜드 남성의류</strong></c:if>
               <c:if test="${prodCate1 eq '10' and prodCate2 eq '12'}"><strong>브랜드 진/캐쥬얼</strong></c:if>
               <c:if test="${prodCate1 eq '10' and prodCate2 eq '13'}"><strong>브랜드 신발/가방</strong></c:if>
               <c:if test="${prodCate1 eq '10' and prodCate2 eq '14'}"><strong>브랜드 쥬얼리/시계</strong></c:if>
               <c:if test="${prodCate1 eq '10' and prodCate2 eq '15'}"><strong>브랜드 아웃도어</strong></c:if>
               <c:if test="${prodCate1 eq '11' and prodCate2 eq '10'}"><strong>여성의류</strong></c:if>
               <c:if test="${prodCate1 eq '11' and prodCate2 eq '11'}"><strong>남성의류</strong></c:if>
               <c:if test="${prodCate1 eq '11' and prodCate2 eq '12'}"><strong>언더웨어</strong></c:if>
               <c:if test="${prodCate1 eq '11' and prodCate2 eq '13'}"><strong>신발</strong></c:if>
               <c:if test="${prodCate1 eq '11' and prodCate2 eq '14'}"><strong>가방/잡화</strong></c:if>
               <c:if test="${prodCate1 eq '11' and prodCate2 eq '15'}"><strong>쥬얼리/시계</strong></c:if>
               <c:if test="${prodCate1 eq '11' and prodCate2 eq '16'}"><strong>화장품/향수</strong></c:if>
               <c:if test="${prodCate1 eq '11' and prodCate2 eq '17'}"><strong>바디/헤어</strong></c:if>
               <c:if test="${prodCate1 eq '12' and prodCate2 eq '10'}"><strong>출산/육아</strong></c:if>
               <c:if test="${prodCate1 eq '12' and prodCate2 eq '11'}"><strong>장난감/완구</strong></c:if>
               <c:if test="${prodCate1 eq '12' and prodCate2 eq '12'}"><strong>유아동 의류</strong></c:if>
               <c:if test="${prodCate1 eq '12' and prodCate2 eq '13'}"><strong>유아동 신발/잡화</strong></c:if>
               <c:if test="${prodCate1 eq '13' and prodCate2 eq '10'}"><strong>신선식품</strong></c:if>
               <c:if test="${prodCate1 eq '13' and prodCate2 eq '11'}"><strong>가공식품</strong></c:if>
               <c:if test="${prodCate1 eq '13' and prodCate2 eq '12'}"><strong>건강식품</strong></c:if>
               <c:if test="${prodCate1 eq '13' and prodCate2 eq '13'}"><strong>커피/음료</strong></c:if>
               <c:if test="${prodCate1 eq '13' and prodCate2 eq '14'}"><strong>생필품</strong></c:if>
               <c:if test="${prodCate1 eq '13' and prodCate2 eq '15'}"><strong>바디/헤어</strong></c:if>
               <c:if test="${prodCate1 eq '14' and prodCate2 eq '10'}"><strong>가구/DIY</strong></c:if>
               <c:if test="${prodCate1 eq '14' and prodCate2 eq '11'}"><strong>침구/커튼</strong></c:if>
               <c:if test="${prodCate1 eq '14' and prodCate2 eq '12'}"><strong>조명/인테리어</strong></c:if>
               <c:if test="${prodCate1 eq '14' and prodCate2 eq '13'}"><strong>생활용품</strong></c:if>
               <c:if test="${prodCate1 eq '14' and prodCate2 eq '14'}"><strong>주방용품</strong></c:if>
               <c:if test="${prodCate1 eq '14' and prodCate2 eq '15'}"><strong>문구/사무용품</strong></c:if>
               <c:if test="${prodCate1 eq '14' and prodCate2 eq '16'}"><strong>사무기기</strong></c:if>
               <c:if test="${prodCate1 eq '14' and prodCate2 eq '17'}"><strong>악기/취미</strong></c:if>
               <c:if test="${prodCate1 eq '14' and prodCate2 eq '18'}"><strong>반려동물용품</strong></c:if>
               <c:if test="${prodCate1 eq '15' and prodCate2 eq '10'}"><strong>노트북/PC</strong></c:if>
               <c:if test="${prodCate1 eq '15' and prodCate2 eq '11'}"><strong>모니터/프린터</strong></c:if>
               <c:if test="${prodCate1 eq '15' and prodCate2 eq '12'}"><strong>PC주변기기</strong></c:if>
               <c:if test="${prodCate1 eq '15' and prodCate2 eq '13'}"><strong>모바일/태블릿</strong></c:if>
               <c:if test="${prodCate1 eq '15' and prodCate2 eq '14'}"><strong>카메라</strong></c:if>
               <c:if test="${prodCate1 eq '15' and prodCate2 eq '15'}"><strong>게임</strong></c:if>
               <c:if test="${prodCate1 eq '15' and prodCate2 eq '16'}"><strong>영상가전</strong></c:if>
               <c:if test="${prodCate1 eq '15' and prodCate2 eq '17'}"><strong>주방가전</strong></c:if>
               <c:if test="${prodCate1 eq '15' and prodCate2 eq '18'}"><strong>계절가전</strong></c:if>
               <c:if test="${prodCate1 eq '15' and prodCate2 eq '19'}"><strong>생활/미용가전</strong></c:if>
               <c:if test="${prodCate1 eq '15' and prodCate2 eq '20'}"><strong>음향가전</strong></c:if>
               <c:if test="${prodCate1 eq '15' and prodCate2 eq '21'}"><strong>건강가전</strong></c:if>
               <c:if test="${prodCate1 eq '16' and prodCate2 eq '10'}"><strong>스포츠의류/운동화</strong></c:if>
               <c:if test="${prodCate1 eq '16' and prodCate2 eq '11'}"><strong>휘트니스/수영</strong></c:if>
               <c:if test="${prodCate1 eq '16' and prodCate2 eq '12'}"><strong>구기/라켓</strong></c:if>
               <c:if test="${prodCate1 eq '16' and prodCate2 eq '13'}"><strong>골프</strong></c:if>
               <c:if test="${prodCate1 eq '16' and prodCate2 eq '14'}"><strong>자전거/보드/기타레저</strong></c:if>
               <c:if test="${prodCate1 eq '16' and prodCate2 eq '15'}"><strong>캠핑/낚시</strong></c:if>
               <c:if test="${prodCate1 eq '16' and prodCate2 eq '16'}"><strong>등산/아웃도어</strong></c:if>
               <c:if test="${prodCate1 eq '16' and prodCate2 eq '17'}"><strong>건강/의료용품</strong></c:if>
               <c:if test="${prodCate1 eq '16' and prodCate2 eq '18'}"><strong>건강식품</strong></c:if>
               <c:if test="${prodCate1 eq '16' and prodCate2 eq '19'}"><strong>렌탈서비스</strong></c:if>
               <c:if test="${prodCate1 eq '17' and prodCate2 eq '10'}"><strong>자동차용품</strong></c:if>
               <c:if test="${prodCate1 eq '17' and prodCate2 eq '11'}"><strong>공구/안전/산업용품</strong></c:if>
               <c:if test="${prodCate1 eq '18' and prodCate2 eq '10'}"><strong>여행/항공권</strong></c:if>
               <c:if test="${prodCate1 eq '18' and prodCate2 eq '11'}"><strong>도서/음반/e교육</strong></c:if>
               <c:if test="${prodCate1 eq '18' and prodCate2 eq '12'}"><strong>공연티켓</strong></c:if>
               <c:if test="${prodCate1 eq '18' and prodCate2 eq '13'}"><strong>e쿠폰</strong></c:if>
               <c:if test="${prodCate1 eq '18' and prodCate2 eq '14'}"><strong>상품권</strong></c:if>
           </p>
       </nav>
       <!-- 정렬 메뉴 -->
       <ul class="sort">
           <li class="${type eq 'sold'?'on':'off'}"><a href="/Java1_Kmarket1/product/list.do?prodCate1=${prodCate1}&prodCate2=${prodCate2}&pg=${currentPage}&type=sold">판매많은순</a></li>
           <li class="${type eq 'lowPrice'?'on':'off'}"><a href="#" id="lowPrice">낮은가격순</a></li>
           <li><a href="#" id="highPrice">높은가격순</a></li>
           <li><a href="#" id="score">평점높은순</a></li>
           <li><a href="#" id="review">후기많은순</a></li>
           <li><a href="#" id="new">최근등록순</a></li>
       </ul>

       <!-- 상품목록 -->
       <table border="0">
       <c:forEach var="product" items="${products}">
           <tr>
               <td>
                   <a href="/Java1_Kmarket1/product/view.do?prodCate1=${prodCate1}&prodCate2=${prodCate2}&prodNo=${product.prodNo}" class="thumb">
                       <img src="${product.thumb1}" alt="상품이미지">
                   </a>
               </td>
               <td>
                   <h3 class="name">${product.prodName}</h3>
                   <a href="/Java1_Kmarket1/product/view.do?prodCate1=${prodCate1}&prodCate2=${prodCate2}&prodNo=${product.prodNo}" class="desc">${product.descript}</a>
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
                   <h6 class="rating star${product.score}">상품평 </h6>
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