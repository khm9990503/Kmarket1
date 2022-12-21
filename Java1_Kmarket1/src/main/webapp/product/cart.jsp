<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="./_header.jsp" />
<script>
	$(function(){
		// 전체선택
		$('.allCheck').on('click', function(){
			var chk = $('.allCheck').prop('checked');
			if(chk){
				$('.check').prop('checked', true);
			}else{
				$('.check').prop('checked', false);
			}
		});
		
		// 전체 선택 후 개별 체크박스 해제시 전체선택 해제
		$('.check').click(function(){
			$('.allCheck').prop('checked', false);
		});
		
		// 선택 삭제
		$('.btnDelete').click(function(){
			
			var chk_arr = new Array();
			
			$(".check:checked").each(function(){
				let chk = $(this).val();
				chk_arr.push(chk);
			})
			console.log(chk_arr);
			
			let chks = chk_arr.toString();
			console.log(chks);
			
			let jsonData = {
					"chks":chks
			}
			if(chks.length < 1){
				alert('삭제할 상품을 선택해주세요.');
				return false;
			}

			let isCheck = confirm('정말 삭제하시겠습니까?');
			if(isCheck){
				$.ajax({
						url: '/Java1_Kmarket1/product/cart.do',
						method: 'post',
						data: jsonData,
						dataType:"json",
						success: function(data){
							if(data.result > 0){
								location.reload();
							}else{
								return;
							}
						}
					});

				}else{
					return;
				}

		});
	
		
		// 주문하기
		$('.btnOrder').click(function(e){
			e.preventDefault()
			let chk_arr = [];
			$("input[name=check]:checked").each(function(){
				let chk = $(this).val();
				chk_arr.push(chk);
			})
			if(chk_arr.length == 0){
				alert('주문할 상품을 선택해주세요.');
				return false;
			}
			let chks = chk_arr.toString();
			
			let isCheck = confirm('주문하기로 이동하시겠습니까?');
			if(isCheck){
				location.href = "/Java1_Kmarket1/product/order.do?cartNo="+chks;
			}else{
				return false;
			}
		});
		
	});
</script>
   <section class="cart">
       <!-- 제목, 페이지 네비게이션 -->
        <nav>
            <h1>장바구니</h1>
            <p>
                HOME > <strong>장바구니</strong>
            </p>
        </nav>
        <form action="#">
            <table>
                <tr>
                	<th><input type="checkbox" name="allCheck" class="allCheck"></th>
                    <th>상품명</th>
                    <th>총수량</th>
                    <th>판매가</th>
                    <th>할인</th>
                    <th>포인트</th>
                    <th>배송비</th>
                    <th>소계</th>
                </tr>

                <tr class="empty"><td colspan="7">장바구니에 상품이 없습니다.</td></tr>
                <c:forEach var="cart" items="${carts}">
                <tr>
                	<td>
	                	<input type="checkbox" name="check" class="check" value="${cart.cartNo}">
	                	<input type="hidden" name="prodNo" value="${cart.prodNo}">
                	</td>
                    <td>
                        <article>
                            <a href="/Java1_Kmarket1/product/view.do?prodCate1=${cart.prodCate1}&prodCate2=${cart.prodCate2}&prodNo=${cart.prodNo}"><img src="${cart.thumb1}"></a>
                            <div>
                                <h2><a href="/Java1_Kmarket1/product/view.do?prodCate1=${cart.prodCate1}&prodCate2=${cart.prodCate2}&prodNo=${cart.prodNo}">${cart.prodName}</a></h2>
                                <p>${cart.descript}</p>
                            </div>
                        </article>
                    </td>
                    <td>${cart.count}</td>
                    <td>${cart.price}</td>
                    <td>${cart.discount}%</td>
                    <td>${cart.point}</td>
                    <c:if test="${cart.delivery > 0}">
                    <td>${cart.delivery}</td>
                    </c:if>
                    <c:if test="${cart.delivery eq '0'}">
                    <td>무료배송</td>
                    </c:if>
                    <td>${cart.total}</td>
                </tr>
            </c:forEach>    
            </table>
            <input type="button" name="del" class="btnDelete" value="선택삭제">
            <div class="total">
                <h2>전체합계</h2>
                <table border="0">
                    <tr>
                        <td>상품수</td>
                        <td class="count">1</td>
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
                        <td>포인트</td>
                        <td>260</td>
                    </tr>
                    <tr>
                        <td>전체주문금액</td>
                        <td>26,000</td>
                    </tr>
                </table>
                <input type="submit" name="btnOrder" class="btnOrder" value="주문하기">
            </div>
        </form>
    </section>
</main>
<jsp:include page="./_footer.jsp" />