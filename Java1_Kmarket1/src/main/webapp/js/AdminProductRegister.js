/**
 * 2022-12-09
 * java1_Kmarket1 register 입력 데이터 유효성 검증
 */
 
 let isProdNameOk = false;


$(function(){

		$('input[name=prodName]').keydown(function(){
			isProdNameOk = false;
			});
		
			let jsonData = {"prodName":prodName};
			
			$('.resultprodName').css('color', 'black').text('...');
			
			setTimeout(()=>{
				
				$.ajax({
					url: '/Java1_Kmarket1/admin/product/register.do',
					type: 'get',
					data: jsonData,
					dataType: 'json',
					success: function(data){
						
						if(data.result == 0){
							isProdNameOk = true;
							$('.resultprodName').css('color', 'green').text('');
						}else{
							isProdNameOk = false;
							$('.resultprodName').css('color', 'red').text('이미 사용중인 상품명 입니다.');
						}
					}
				});
				
			}, 500);
			
			$('.register > form').submit(function(){
					
			if(!isProdNameOk){
				alert('동일한 상품명이 존재합니다.');
				return false;
			}
			
			// 최종 전송
			return true;
			});
		});