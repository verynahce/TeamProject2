<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길JOB이</title>
<link rel="stylesheet" href="/css/common.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/js/common.js" defer></script>

<style>

.innercontents {
   display:flex;
   gap:110px;

 }
 
 .sidebar {
   border :1px solid #ccc;
   width:233px;
   border-radius:15px;
   overflow:hidden;
   margin:0;
   max-height:fit-content;
 }
 
 .sidebar table {
   width:100%;
   margin:0;
   border-spacing:0;
 }

 .sidebar th {
   background-color:#ffd700;
   color:white;
   height:80px;
   margin:0;
   font-size:25px;
 }
 
 .sidebar td {
   padding:15px 15px;;
   margin:0;
   
 }
 
 .sidebar a {
   display:block;
   padding:10px 0;
   text-decoration:none;
   border-radius:7px;
   padding-left:10px;
   color: #767676;
   display:flex;
   align-items:center;
 }
   
 .sidebar a:hover {
   background-color: #FFEF96;
   color: #111;
 }
 
 .sidebar a img {
   margin-right:10px;
   
 }

 .container {
   display :flex;
   flex-direction:column;
   align-items:left;
   width: 100%;
   gap:30px;

 }
 
 .title {
   text-align:center;
   margin-bottom:30px;
    font-size:36px;
   font-weight:550;
 }
 
 .subtitle {
   font-weight:450;
   font-size:24px;
   padding-bottom:14px;
 }
 
 .contents {
   width:550px;

 }
 
 .info {
   display:flex;
   padding-top:23px;
   flex-direction:row;
 }
 
 .info-content {
   display:flex;
   flex-direction:column;
   margin-left:15px;
 }
 
 #info-title {
   font-weight:465;
   font-size:20px;
 }
 
 #info-year {
   color:#767676;
 }
 
 .profile-image {
   display:flex;
   flex-direction:column;
   align-items:center;
 }
 
 #profileimage-update {
   color:#767676;
   border: 1px solid silver;
   border-radius:5px;
   text-align:center;
   width:85%;
   margin-top:10px;
 }
 #profileimage-updatebtn {
   display:block;
 }
 
 .info-sub {
   display:flex;
   flex-direction:row;
   margin-top:70px;
   gap:30px;
   width:100%;
   padding-right:0;
   padding-left:45px;
   justify-content:left;
   
 }
 
 .updatetitles {
   width:110px;
   margin-right:15px;
 }
 
 .updateinputs {
   border:1px solid silver;
   border-radius:5px;
   width:100%;
 }
 
 .updateinputs td {
   height:45px;
   padding-left:10px;
   }
  
 .inputs {
   border:none;
   outline:none;
   padding-right:10px;
 }
  .underline {
   border-bottom: 1px solid silver;
   border-collapse:collapse;
 }

 .updateinputs tr:last-child .underline {
   border-bottom: none;
 }
 
 #search-address {
  width:100%;
  height:30px;   
 }
 
 .btn-layout {
   margin: 100px 180px;
   display: flex; 
   justify-content: space-between;
}

 .btn {
   display: inline-block;
   width: 200px; 
   height: 60px;   
   border-radius: 8px;
   font-size: 16.1px; 
   
 }
   
 .btn:hover {
  background-color:#666577;
  color: white;
   } 

 .btn-back, .btn-delete {
   background: #585766; 
   color: white;
   padding: 20px;
   margin : 10px;

 }
.preview {
width: 100px;
height: 100px;

} 
 
</style>
</head>
<body>
   <%@include file="/WEB-INF/include/header.jsp" %>
 <main>
  <div class="inner">
      <div class="innercontents">
       <div class="sidebar">
         <table>
         <tr><th>개인서비스</th></tr>
         <tr><td><a href="/User/MyPage/Home/View" class="active-color"><img src="/images/myhome.svg" class="img">MY홈</a></td></tr>
         <tr><td><a href="/User/MyPage/Resume/List?user_idx=${userVo.user_idx}" class="link"><img src="/images/icon2.svg" class="img" data-hover="/images/icon22.svg">이력서</a></td></tr>
         <tr><td><a href="/User/MyPage/BookMark/List?user_idx=${userVo.user_idx}" class="link"><img src="/images/icon3.svg" class="img" data-hover="/images/icon33.svg">관심기업 / 받은제의</a></td></tr>
         <tr><td><a href="/User/MyPage/ApplyList/List?user_idx=${userVo.user_idx}" class="link"><img src="/images/arrow.svg" class="img" data-hover="/images/arrow2.svg">지원내역</a></td></tr>
         <tr><td><a href="/api/notice/list?user_idx=${user_idx}" class="link"><img src="/images/Mail.svg" class="img" data-hover="/images/mail3.svg">수신함</a></td></tr>
        </table>
       </div>
    <form action="/User/MyPage/Home/update" method="POST"enctype="multipart/form-data">
       <div class="container">
      	<div class="contents">
      	 <h2 class="title">회원 정보 수정</h2>
      	 <h3 class="subtitle">기본정보</h3>
      	 <hr>
      	 <div class="info">
      	  <div class="profile-image">
       <c:choose>
      <c:when test="${imagePath != '0'}">
         <img src="/image/read?path=${imagePath}" alt="User Image" class="preview">
       </c:when> 
       <c:otherwise>
         <img src="/images/icon/user-profile.png" alt="User Image" class="preview">
       </c:otherwise>
        </c:choose> 
       <span>
       <input id="idPhoto" type="file" name="upimage" class="upimage" style="display:none"accept=".jpg, .jpeg, .png"/>
        <label class="input-file-button idPhto2" for="idPhoto">사진 업로드</label>
       </span> 

      	  
      	  </div>
      	  <div class="info-content">
      	  	<h3 id="info-title">${userVo.user_name}</h3>
      	    <p id="info-year">${userVo.user_gender}, ${age}세(${UYear}년)</p>
      	    <input type="hidden" name="image_idx" value="${not empty ifvo.image_idx ? ifvo.image_idx : 0}"> 

      	  </div>      	 
      	 </div>

       <input type="hidden" name="user_idx" value="${userVo.user_idx}"/>
      	 <div class="info-sub">
      	  <table class="updatetitles">
      	  	<tr>
      	   	  <td>아이디</td>
      	  	</tr>
      	  	<tr>
      	   	  <td>비밀번호</td>
      	  	</tr>
    	  	<tr>
      	   	  <td>비밀번호 확인</td>
      	  	</tr>
      	  </table>
      	  <table class="updateinputs">
      	  	<tr>
      	   	  <td class="underline"><input type="text" class="inputs"name="user_id" value="${userVo.user_id}" readonly></td>
      	  	</tr>
      	  	<tr>
      	   	  <td class="underline"><input type="password"  name="user_pw"class="inputs passwd1" value=""placeholder="비밀번호"required></td>
      	  	</tr>
    	  	<tr>
      	   	  <td class="underline"><input type="password" class="inputs passwd2"  value="" placeholder="비밀번호 확인"required></td>
      	  	</tr>
      	  </table>
      	 </div>
      	 <div class="info-sub">
      	  <table class="updatetitles">
      	  	<tr>
      	   	  <td>이름</td>
      	  	</tr>
      	  	<tr>
      	   	  <td>생년월일</td>
      	  	</tr>
    	  	<tr>
      	   	  <td>전화번호</td>
      	  	</tr>
      	  	<tr>
      	   	  <td>이메일</td>
      	  	</tr>
      	  	<tr>
      	   	  <td>주소</td>
      	  	</tr>
      	  </table>
      	  <table class="updateinputs">
      	  	<tr>
      	   	  <td colspan="2" class="underline"><input type="text" class="inputs" name="user_name"value="${userVo.user_name}" required></td>
      	  	</tr>
      	  	<tr>
      	   	  <td colspan="2" class="underline"><input type="text" class="inputs"name="user_birthdate" id="bdate"value="${userVo.user_birthdate}"required></td>
      	  	</tr>
    	  	<tr>
      	   	  <td colspan="2" class="underline"><input type="text" class="inputs" name="user_tel"id="tel" value="${userVo.user_tel}"required/></td>
      	  	</tr>
      	  	<tr>
      	   	  <td colspan="2" class="underline">
      	   	   <input type="email" id="user_email" class="inputs" name="user_email" placeholder="이메일 입력" value="${userVo.user_email}"required/>
      	   	   <select id="email_domain" class="inputs" onchange="updateEmail()">
                	<option value="" selected>직접입력</option>
                    <option value="gmail.com">gmail.com</option>
                    <option value="naver.com">naver.com</option>
                    <option value="kakao.com">kakao.com</option>
                    <option value="yahoo.com">yahoo.com</option>
                    <option value="outlook.com">outlook.com</option>
                </select>
             </td>
      	  	</tr>
	      	  <tr>
	            <td class="under-line">
	             <input type="text" name="user_address" class="inputs" id="roadFullAddr" placeholder="주소 검색을 해주세요" value="${userVo.user_address}"readonly required/>
	            </td>
	            <td class="inputs"><button id="search-address" type="button" onclick="searchAddress()">주소 검색</button></td>
	          </tr>
      	  </table>     	 
      	</div>
      	   
      	   <div class="btn-layout">
      	      <input  type="hidden"  name="user_idx"value="${userVo.user_idx}"/>
              <input class="btn btn-back" type="submit" value="회원정보 수정"/>             
              <input class="btn btn-delete" type="button" value="회원 탈퇴"/>                        
         </div>
       
      	</div>
       </div>
          </form>
      </div>
 </div>

</main>
   <%@include file="/WEB-INF/include/footer.jsp" %>
   
<script>
$(function() {
	 //이미지추가
    $('.upimage').on('change', function() {
               const file = this.files[0];
               console.log(file)
               if (file) {
                   const reader = new FileReader();
                   reader.onload = function(e) {
                       $('.preview').attr('src', e.target.result).show(); // 미리보기 이미지 표시
                   }
                   reader.readAsDataURL(file); // 파일을 Data URL로 읽기
               }
           });
   //사이드바
    const links = document.querySelectorAll(".link");

    links.forEach(link => {
        const img = link.querySelector(".img");
        const originalSrc = img.src;
        const hoverSrc = img.getAttribute("data-hover");

        link.addEventListener("mouseover", () => {
            img.src = hoverSrc;
        });

        link.addEventListener("mouseout", () => {
            img.src = originalSrc;
        });
    });

    $('.btn-back').on('click', function() {
      
    	const passwd1 = $('.passwd1').val().trim()
        const passwd2 = $('.passwd2').val().trim()
        const bdate = $('#bdate').val().trim()
        const tel = $('#tel').val().trim()
        const serverPassword = '${userVo.user_pw}';
       
        const phoneRegex = /^\d{3}-\d{3,4}-\d{4}$/;
        
         if( passwd1 == '') {
    		alert('비밀번호를 입력하세요')
    		$('.passwd1').focus()
    		return false
    	}else if( passwd1 !== serverPassword) {
    		alert('비밀번호가 틀립니다')
    		$('.passwd1').focus()
    		return false
    	}else if(passwd2 !== passwd1) {
    		alert('비밀번호가 다릅니다')
    		$('.passwd2').focus()
    		return false
    	}else  if(bdate.length !== 8) {
    		alert('생년월일은 8글자입력해주세요')
    		$('#bdate').focus()
    		return false
    	}else  if(!phoneRegex.test(tel)) {
    		alert('올바른 전화번호 형식이 아닙니다')
    		$('#tel').focus()
    		return false
    	}else{
    		return true;
    	}
         
    	
    })
    

    $('.btn-delete').on('click', function() {
        if (confirm("정말 탈퇴하시겠습니까?")) {
            location.href = "/User/MyPage/Home/Delete?user_idx="+${userVo.user_idx};
        }
    });

    
})
     function searchAddress() {
        window.open("/User/SearchAddress","pop","width=570,height=430, scrollbars=yes, resizable=yes");
    }
    function jusoCallBack(roadFullAddr){
        document.getElementById('roadFullAddr').value = roadFullAddr;
    }
      function updateEmail() {
          var emailInput = document.getElementById('user_email');
          var domainSelect = document.getElementById('email_domain');

          var selectedDomain = domainSelect.value;

          if (selectedDomain) {
              emailInput.value = emailInput.value.split('@')[0] + '@' + selectedDomain;
          } else {
              emailInput.value = emailInput.value.split('@')[0]; // 도메인 제거
          }
      }
</script>

</body>
</html>