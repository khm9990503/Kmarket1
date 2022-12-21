<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/member/_header.jsp"/>
<script src="http://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/Java1_Kmarket1/js/postcode.js"></script>
<script src="/Java1_Kmarket1/js/MemberValidation2.js"></script>

<style>
#member > .registerSeller table #btnZip {
    position: relative;
    top: 5px;
    padding: 5px;
}

</style>

<main id="member">
<div class="registerSeller">
    <nav>
        <h1>판매자 회원가입</h1>
    </nav>
    <form action="/Java1_Kmarket1/member/registerSeller.do" method="post">
        <section>
            <table>
                <caption>필수 정보입력</caption>
                <tbody>
                    <tr>
                        <th>
                            <span class="essential">*</span>아이디
                        </th>
                        <td><input type="text" name="uid" placeholder="아이디를 입력" required>
                     	<button type="button" id="btnUidCheck">중복확인</button>
                     	<span class="resultUid">영문, 숫자로 4~12자까지 설정해 주세요.</span>
                           <input type="hidden" name="type" value="2">
 						  <input type="hidden" name="level" value="5">
                  		</td>
                   </tr>
                   <tr>
                       <th>
                           <span class="essential">*</span>비밀번호
                       </th>
                       <td><input type="password" name="pass1" placeholder="비밀번호를 입력" required>
                  		<span class="resultPass1">영문, 숫자, 특수문자를 조합하여 8~12자까지 설정해 주세요.</span>
                  		</td>
                   </tr>
                   <tr>
                       <th>
                           <span class="essential">*</span>비밀번호확인
                       </th>
                       <td><input type="password" name="pass2" placeholder="비밀번호를 확인" required>
                          <span class="resultPass"> 비밀번호 재입력</span>
                       </td>
                   </tr>
               </tbody>
           </table>
       </section>
       <section>
           <table>
               <caption>판매자 정보입력</caption>
               <tbody>
                   <tr>
                       <th>
                           <span class="essential">*</span>회사명
                       </th>
                       <td>
                           <input type="text" name="kms_company" placeholder="회사명 입력" required>
                           <span class="msgCompany">&nbsp;&nbsp;(주)포함 입력, 예) (주)케이마켓</span>
                       </td>
                   </tr>
                   <tr>
                       <th>
                           <span class="essential">*</span>대표자
                       </th>
                       <td>
                           <input type="text" name="kms_ceo" placeholder="대표자 입력" required>
                       </td>
                   </tr>
                   <tr>
                       <th>
                           <span class="essential">*</span>사업자등록번호
                       </th>
                       <td>
                           <input type="text" name="kms_corp_reg" placeholder="사업자등록번호 입력" required>
                           <span class="msgCorp">&nbsp;&nbsp;- 표시 포함 12자리 입력, 예) 123-45-67890</span>
                       </td>
                   </tr>
                   <tr>
                       <th>
                           <span class="essential">*</span>통신판매업신고 번호
                       </th>
                       <td>
                           <input type="text" name="kms_online_reg" placeholder="통신판매업신고 입력" required>
                           <span class="msgOnline">&nbsp;&nbsp;- 표시 포함, 예) 강남-12345, 제 1-01-23-4567호, 2017-경기성남-0011</span>
                       </td>
                   </tr>
                   <tr>
                       <th>
                           <span class="essential">*</span>전화번호
                       </th>
                       <td>
                           <input type="text" name="kms_tel" placeholder="전화번호 입력" required>
                           <span class="msgTel">&nbsp;&nbsp;- 표시 포함, 지역번호 포함, 예) 02-234-1234</span>
                       </td>
                   </tr>
                   <tr class="fax">
                       <th>팩스번호</th>
                       <td>
                           <input type="text" name="kms_fax" placeholder="팩스번호 입력">
                           <span class="msgFax">&nbsp;&nbsp;- 표시 포함, 지역번호 포함, 예) 02-234-1234</span>
                       </td>
                   </tr>
                   <tr>
                       <th>
                           <span class="essential">*</span>EMAIL
                       </th>
                       <td>
                           <input type="email" name="kms_email" placeholder="이메일 입력" required>
                       </td>
                   </tr>
                   <tr class="addr">
                       <th>
                       		<span class="essential">*</span>회사주소
                       </th>
                       <td>
                       <div>
                           <input type="text" name="zip" id="zip" placeholder="우편번호를 검색하세요." readonly required/>
           				<button type="button" id="btnZip" onclick="postcode()">우편번호 찾기</button>
                         </div>
                         <div>
                            <input type="text" name="addr1" id="addr1" size="50" placeholder="주소를 검색하세요." readonly required/>
                         </div>
                         <div>
                             <input type="text" name="addr2" id="addr2" size="50" placeholder="상세주소를 입력하세요." required>
                         </div>
                   	   </td>
                    </tr>
                </tbody>
            </table>
        </section>
        
        <div>
            <input type="submit" class="join" value="회원가입">
        </div>
    </form>
</div>
</main>
<jsp:include page="/member/_footer.jsp"/>