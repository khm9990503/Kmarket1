<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./_header.jsp"/>
        <main>
            <!--사이드-->
            <aside>
                <!--카테고리-->
                <ul class="category">
                    <li><i class="fa fa-bars" aria-hidden="true"></i>카테고리</li>
                    <c:forEach var="ca1" items="${cate1s}">
                    <li>
                        <a href="#">
                        	<c:choose>
                        	<c:when test="${ca1.cate1 == 10 }">
                        	<i class="fas fa-tag" aria-hidden="true"></i>${ca1.c1Name}<i class="fas fa-angle-right" aria-hidden="true"></i>
                        	</c:when>
                        	<c:when test="${ca1.cate1 == 11 }">
                        	<i class="fas fa-tshirt" aria-hidden="true"></i>${ca1.c1Name}<i class="fas fa-angle-right" aria-hidden="true"></i>
                        	</c:when>
                        	<c:when test="${ca1.cate1 == 12 }">
                        	<i class="fas fa-baby" aria-hidden="true"></i>${ca1.c1Name}<i class="fas fa-angle-right" aria-hidden="true"></i>
                        	</c:when>
                        	<c:when test="${ca1.cate1 == 13 }">
                        	<i class="fas fa-utensils" aria-hidden="true"></i>${ca1.c1Name}<i class="fas fa-angle-right" aria-hidden="true"></i>
                        	</c:when>
                        	<c:when test="${ca1.cate1 == 14 }">
                        	<i class="fas fa-home" aria-hidden="true"></i>${ca1.c1Name}<i class="fas fa-angle-right" aria-hidden="true"></i>
                        	</c:when>
                        	<c:when test="${ca1.cate1 == 15 }">
                        	<i class="fas fa-laptop" aria-hidden="true"></i>${ca1.c1Name}<i class="fas fa-angle-right" aria-hidden="true"></i>
                        	</c:when>
                        	<c:when test="${ca1.cate1 == 16 }">
                        	<i class="fas fa-heart" aria-hidden="true"></i>${ca1.c1Name}<i class="fas fa-angle-right" aria-hidden="true"></i>
                        	</c:when>
                        	<c:when test="${ca1.cate1 == 17 }">
                        	<i class="fas fa-car" aria-hidden="true"></i>${ca1.c1Name}<i class="fas fa-angle-right" aria-hidden="true"></i>
                        	</c:when>
                        	<c:when test="${ca1.cate1 == 18 }">
                        	<i class="fas fa-book" aria-hidden="true"></i>${ca1.c1Name}<i class="fas fa-angle-right" aria-hidden="true"></i>
                        	</c:when>
                        	</c:choose>
                        </a>
                        <ol>
                        	<c:forEach var="ca2" items="${cate2s}">
                        		<c:if test="${ca1.cate1==ca2.cate1}">
		                            <li><a href="/Java1_Kmarket1/product/list.do">${ca2.c2Name}</a></li>
	                            </c:if>
                            </c:forEach>
                        </ol>
                    </li>
                    </c:forEach>
                </ul>
                <!--베스트상품-->
                <article class="best">
                    <h1>
                        <i class="fas fa-crown" aria-hidden="true"></i>베스트상품
                    </h1>
                    <ol>
                    	<c:forEach var="best" items="${bests}">
                        <li>
                            <a href="/Java1_Kmarket1/product/view.do?prodNo=${best.prodNo}">
                                <div class="thumb">
                                    <i>1</i>
                                    <img src="${best.thumb1}" alt="BestItem">
                                </div>
                                <h2>${best.prodName}</h2>
                                <c:if test="${best.discount != '0'}">
                                <div class="org_price">
                                    <del>${best.price}</del>
                                    <span>${best.discount}%</span>
                                </div>
                                </c:if>
                                <div class="dis_price">
                                	<c:choose>
                                		<c:when test="${best.discount == '0'}">
	                                    	<ins>${best.price}</ins>
	                                    </c:when>
                                		<c:when test="${best.discount != '0'}">
	                                    	<ins>${Math.round(best.price*(100-best.discount)/100)}</ins>
	                                    </c:when>
                                    </c:choose>
                                </div>
                            </a>
                        </li>
                        </c:forEach>
                    </ol>
                </article>
            </aside>
            <section>
                <!--슬라이더-->
                <section class="Slider">
                    <div class="slider">
                        <div><a href="#"><img src="/Java1_Kmarket1/img/main_banner1.jpg" alt="item1"></a></div>
                        <div><a href="#"><img src="/Java1_Kmarket1/img/main_banner2.jpg" alt="item2"></a></div>
                        <div><a href="#"><img src="/Java1_Kmarket1/img/main_banner3.jpg" alt="item3"></a></div>
                        <div><a href="#"><img src="/Java1_Kmarket1/img/main_banner4.jpg" alt="item4"></a></div>
                        <div><a href="#"><img src="/Java1_Kmarket1/img/main_banner5.jpg" alt="item5"></a></div>
                    </div>
                </section>
                <!--히트상품-->
                <section class="hit">
                    <h3>
                        <span>히트상품</span>
                    </h3>
                    <c:forEach var="hit" items="${hits}">
                    <article>
                        <a href="/Java1_Kmarket1/product/view.do?prodNo=${hit.prodNo}">
                            <div class="thumb">
                                <img src="${hit.thumb1}" alt="HitItem">
                            </div>
                            <h2>${hit.prodName}</h2>
                            <c:if test="${hit.descript}">
                            <p>${hit.descript}</p>
                            </c:if>
                            <c:if test="${hit.discount != '0'}">
                            <div class="org_price">
                                <del>${hit.price}</del>
                                <span>${hit.discount}%</span>
                            </div>
                            </c:if>
                            <div class="dis_price">
                            	<c:choose>
	                            	<c:when test="${hit.discount == '0'}">
	                                <ins>${hit.price}</ins>
	                                </c:when>
	                             	<c:when test="${hit.discount != '0'}">
	                                <ins>${Math.round(hit.price*(100-hit.discount)/100)}</ins>
	                                </c:when>
                                </c:choose>
                                <c:choose>
                                	<c:when test="${hit.delivery == '0' }">
                                		<span class="free">무료배송</span>
                                	</c:when>
                                	<c:when test="">
                                		
                                	</c:when>
                                </c:choose>
                            </div>
                        </a>
                    </article>
                    </c:forEach>
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