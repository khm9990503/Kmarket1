/**
 * 날짜 : 2022/10/24
 * 이름 : 장인화
 * 내용 : 회원가입 입력데이터 유효성 검증
 */
	 // 데이터 검증에 사용할 정규표현식
	let regUid   = /^[a-z]+[a-z0-9]{4,19}$/g;
	let regName  = /^[가-힣]{2,4}$/;
	let regNick  = /^[가-힣a-zA-Z0-9]+$/;
	let regEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	let regHp	 = /^\d{3}-\d{3,4}-\d{4}$/;
	let regPass  = /^.*(?=^.{5,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
	
	// 폼 데이터 검증 결과 상태변수
	let isUidOk   = false;
	let isPassOk  = false;
	let isPassMatch  = false;
	let isNameOk  = false;
	let isNickOk  = false;
	let isEmailOk = false;
	let isHpOk    = false;
	let isEmailAuthOk = false;
	let isEmailAuthCodeOk = false;
	let receivedCode = 0;	
	
	$(function(){
	
	let uid = $('input[name=uid]').val();
	
	('.register > form').submit(function(){
	
	if(!uid.match(regUid)){
		alert('아이디를 확인 하십시요.');
		return false;
	}
	
	// 최종 전송
	return true;
	
 	});
 });
 
