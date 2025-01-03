<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>   
<!DOCTYpE html>
<html>
<head>
<meta charset="UTF-8">
<title>길JOB이</title>
<link rel="stylesheet" href="/css/common.css" />
<script src="https://cdn.jsdelivr.net/npm/browser-scss@1.0.3/dist/browser-scss.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/js/common.js" defer></script>
<style>

 .innercontents {
   display:flex;
    gap:30px;
    font-family: pretendard; 
    padding-top:30px; 
    padding-bottom:60px; 
 }
 
 .sidebar {
   border :1px solid #ccc;
   width:300px;
   height:378px;
   border-radius:15px;
   overflow:hidden;
   margin:0;
   
    position: sticky; 
    top: 124px; 

    z-index: 1000;
  
 }
 
 .sidebar table {
   width:100%;
   margin:0;
   border-spacing:0;
 }

 .sidebar th {
   background-color:#4876EF;
   color:white;
   height:80px;
   margin:0;
   font-size:25px;
 }
 .sidebar td {
   padding:15px 15px;
   margin:0;
   background-color:white;
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
   background-color: #BED0FF;
   color: #111;
 }
 
 .sidebar a img {
   margin-right:10px;
   
 }
 .container {

     width:  100%;
     display:flex;
      flex-direction: column; 
    justify-content: center;
 }
 
.contain-body {
    width:940px;
    min-height: 1840px;
    background-color: white;
    border-radius: 20px;
    margin: 0px auto 60px  auto  ;
    padding: 0 60px 50px 60px;
  }

.main-title {
    color: #333333;
    font-size: 36px; 
    font-weight: 600; 
    line-height: 50.40px;
    padding-top: 30px;
     }
 
 #info {
     display: flex; 
     padding-top:23px;

    #info-content {
    padding-left:23px;
    #star-size1 {
      width: 15px;
    height: 15px;
    }    
    }    
#info-title {
    
    color: #333333; 
    font-size: 28px; 
    font-weight: 600; 
    line-height: 39.20px; 
}        
p {
    color: #555555; 
    font-size: 16px; 
    font-weight: 400; 
    line-height: 22.40px;
    margin-top: 4px;
    margin-bottom: 3px;
}   
 img {
     width: 120px;
    height: 120px;
    }  
    }

 /*서브 분야들*/ 
 .sub-filed{    
  .sub-topic {
        width:100%;
        border-collapse: collapse;      
    tr {
        border-bottom:1px solid #CCCCCC; 
    td {
        border-bottom:1px solid #CCCCCC; 
        padding-bottom:5px; 
        padding-top: 5px;  
            }   
    .sub-skill {
        padding-bottom:15px; 
        padding-top: 15px;      
              }             
        td:nth-child(1) {                   
           color: #333333; 
           font-size: 16px; 
           font-weight: 500; 
           line-height: 22.40px; 
           width:80px;   
                         }
         td:nth-child(2) {
           color: #333333; 
           font-size: 16px;
           font-weight: 400;
           line-height: 22.40px; 
           padding-left: 155px;
           border-bottom:                       
           }
          }                    
     }      
     p {
      padding-top: 10px;
    color: #767676;
     }         
}

/*서브 - 긴글*/
.sub-content {
    
 width:100%;
 min-height: 250px;
 padding-top: 10px;
 color: #767676;
 border-bottom: 1px solid #CCCCCC;
}
/*서브 - 소제목*/
.sub-title {
 color: #333333;
 font-size: 20px; 
 font-weight: 500; 
 line-height: 28px;
 margin-top:63px;
 margin-bottom:16px;
}


   /*기술스택 */ 
.skill-shape  {

padding-top: 20px;
padding-bottom: 5px;
color: #333333; 
font-size: 16px; 
 font-weight: 500; 
border-bottom:1px solid #CCCCCC; 
}
       
.sub-skill-layout {
   display:flex;
     
   div {
   padding:12px;
   margin:8px;
   background-color:#EBECF1; 
   border-radius: 4px;
     }
     
   div:nth-child(1) {
   margin-left: 0px;
     }
}
.pSkill {

  display: inline-block;
  font-size: 17px; 
  color: #555555;   
  padding: 15px;
  margin-right:10px; 
  margin-top:-6px;      
  margin-bottom:15px;      
  background-color:#EBECF1; 
  border-radius: 8px;
} 
.skillDelete {
 display: inline-block;
 padding:0 ;
 margin-top:-10.4px; 
 font-size: 17px;
 cursor: pointer;
}

#date {

width: 230px;
 height: 47px;
  border: 1px solid #cccccc; 
  border-radius:8px;
  padding: 14px;
  margin:20px 0 20px 0;
  color: #767676; 
}
/*버튼*/
  .btn:hover {
   background-color:#666577;
   color: white;
   } 

  .btn-submit {

   background: #585766; 
   color: white;
   font-size: 16.1px; 
   margin-left:353px;
   width: 200px; 
   height: 60px;   
   border-radius: 8px;
   border : 1px solid #585766;
 }
 
/*input 정리*/
input[type="text"] {
  height: 47px;
  border: 1px solid #cccccc; 
  border-radius:8px;
  padding: 10px;
  color: black; 
  margin: 18px 0;
  font-size: 16px; 
  &::placeholder {
  color: #cccccc; 
    }
}

.input-size2{
 width:100%;
}

.input-size1{
 width:300px;
  padding: 0px;

}
 
select {
  height: 47px;
  border: 1px solid #cccccc; 
  border-radius:8px;
  padding: 10px;
  color: #767676; 
  margin: 18px 4px;
  font-size: 16px; 
}
textarea {
  border: 1px solid #cccccc; 
  border-radius:8px;
  padding: 10px;
  color: #767676; 
  margin: 18px 4px;
  font-size: 16px; 
  width:100%;
  min-height: 240px;
   &::placeholder {
  color: #cccccc; 
    }

}
.sub-talkform {
display:flex;
justify-content: space-between;
align-items: baseline;

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
         <tr><th>기업서비스</th></tr>
         <tr><td><a href="/Company/Mypage/Home/View?company_idx=${sessionScope.login.company_idx }" class="link"><img src="/images/myhome2.svg" class="img" data-hover="/images/myhome.svg">MY홈</a></td></tr>
         <tr><td><a href="/Company/Mypage/Post/List?company_idx=${sessionScope.login.company_idx }" class="active-color2"><img src="/images/icon22.svg" class="img">채용공고</a></td></tr>
         <tr><td><a href="/Company/Mypage/Bookmark/List?company_idx=${sessionScope.login.company_idx }" class="link"><img src="/images/icon3.svg" class="img" data-hover="/images/icon33.svg">관심인재</a></td></tr>
         <tr><td><a href="/Company/Mypage/ApplyList/PostList?company_idx=${sessionScope.login.company_idx }" class="link"><img src="/images/arrow.svg" class="img" data-hover="/images/arrow2.svg">지원내역</a></td></tr>
        </table>
      </div>
      
      <div class="container" >
    <form action="/Company/Mypage/Post/Write" method="Post" enctype="multipart/form-data">
    <input type="hidden" name="company_idx"  value="${companyVo.company_idx }"/>    
      <div class="contain-body">  
       
      <h2 class="main-title">채용공고 작성</h2>

      
      <h4 class="sub-title">기본정보</h4>
      <hr>
      <div id="info">
        <img src="/images/icon/company-profile.png" alt="회사 이미지" class="preview"/>
        <div id="info-content">
           <h3 id="info-title">${companyVo.company_name }</h3>
           <p><img id="star-size1"src="/images/star1.png" alt="Star Image"> (5.0)</p>
           <p>${companyVo.company_email }</p>
           <p>${companyVo.company_tel }<p/>
        </div>
      </div>
      <input id="idPhoto" type="file" name="upimage" class="upimage" style="display:none"accept=".jpg, .jpeg, .png"/>
      <label class="input-file-button2 idPhto2" for="idPhoto">사진 업로드</label>

   
      
      <div class="sub-filed">
        <h4 class="sub-title">채용공고 제목</h4>
        <hr>
        <input class="input-size2"  id="title" name="post_title" type="text" value="" placeholder="공고제목을 입력하세요"/>
      </div>
      

      <div class="sub-filed">
	    <h4 class="sub-title">모집조건</h4>
	    <hr> 
	    <table class="sub-topic">
	     <tr>
	      <td>직무</td>
	         <td> 
	         <select name="duty_id" id="field">	      	       
            <option value"">직무</option>
            <c:forEach var="duty" items="${dutyList }"><option value="${duty.duty_id }">${duty.duty_name}</option></c:forEach>
            </select>
          </td>
	    </tr>
		<tr>
	      <td>경력</td>
	      <td> 
	         <select name="career_id" id="career">	      	       
            <option value"">경력</option>
            <c:forEach var="career" items="${careerList }"><option value="${career.career_id }">${career.career_name}</option></c:forEach>
            </select>
          </td>
	    </tr>
	   
	    <tr>
	      <td>요구학력</td>
	      <td> 
	         <select name="edu_id" id="school">	      	       
            <option value"">학력</option>
            <c:forEach var="edu" items="${eduList }"><option value="${edu.edu_id }">${edu.edu_name}</option></c:forEach>
            </select>
          </td>
	    </tr>
	    
	    <tr>
	      <td>급여</td>
	      <td>
	         <input class="input-size1" id="salary" name="post_salary" type="text" value="" placeholder="연봉을 입력해주세요"  />           
          </td>
	    </tr>
	    </table>	    
	
	     <div class="skill-shape">
	      업무 및 스킬       
	      <input class="input-size2" id="skill" type="text" value="" placeholder="스킬을 영어로 입력해주세요" list="skillOptions"/>
         <div id='techList'></div>
        <datalist id ="skillOptions">
         <c:forEach var="skill" items="${skillList }">
         <option value="${skill.skill_name}"/>
         </c:forEach>
         </datalist>
          </div>
	    
	    
	     <table class="sub-topic">
	    <tr>
	      <td>공고마감일</td>
	      <td> 
	         <input id="date" type="date" name="post_ddate" placeholder='날짜를 선택해주세요'/>           
          </td>
	    </tr>
	   </table>
	  </div>	  
	  
	     <div class="sub-filed">
	    <h4 class="sub-title">근무조건</h4>
	    <hr> 
	    
	    <table class="sub-topic">
	     <tr>
	      <td>근무형태</td>
	      <td> 
	         <select name="emp_id" id="eForm">	      	       
            <option >근무형태</option>
            <c:forEach var="emp" items="${empList }"><option value="${emp.emp_id }">${emp.emp_name}</c:forEach>
            </select>
          </td>
	    </tr>
		<tr>
	      <td>근무지역</td>
	      <td> 
	         <select name="city_id" id="region">	      	       
            <option >근무지역</option>
            <c:forEach var="city" items="${cityList }"><option value="${city.city_id }">${city.city_name }</option></c:forEach>
            </select>
          </td>
	    </tr>
	   
	   </table>
	  </div>	 
	  
      <div class="sub-filed">
	    <h4 class="sub-title" >상세내용</h4>
	    <hr> 
	    <textarea id="details" name="post_content" placeholder="센스있게 작성하여 입사지원의 확률을 높이세요"></textarea>
	  </div>     
     
      <div class="sub-filed ">
        <div class="sub-talkform">
	      <h4 class="sub-title">인사담당자 톡</h4><input type="button" id="btnAddFile2" value="답변하기"/>
	    </div>
	    <hr> 
	    <div class="sub-talkout"></div>	    	
	  </div>	 
     
    
          </div>
          <div class="btn-layout">
               <input class="btn btn-submit" type="submit" value="채용공고 저장"/>
         </div>
         
         </form>
      </div>
   </div>
 </div>

</main>

 <%@include file="/WEB-INF/include/footer.jsp" %>
 
 
 <script>
 
 $(function() {
	 
//인사담당자 톡
 const addRow =`
     <table class="sub-topic">
     <tr>
     <td>근무환경은<br>어떤가요?</td>
     <td> 
      <select name="cloth" id="cloth">	      	       
       <option >출근복장</option>
       <option >자율 복장</option>
       <option >복장 규율 준수</option>
       </select>
      <select name="age" id="age">	      	       
       <option >연령대</option>
       <option >연령 구성 다양</option>
       <option >대부분 2030대</option>
       <option >대부분 3040대</option>
       <option >대부분 4050대</option>
      </select>
     <input type="text" name="situation_etc" id="situation_etc" placeholder="추가근무환경을 입력하세요"/>
     </td>
     
   </tr>
	<tr>
     <td>복지 및<br> 처우는 어떻게 되나요?</td>
     <td> 
      <select name="prek" id="prek">	      	       
       <option >식비</option>
       <option >급여 외 식대제공</option>
       <option >급여 내 식대포함</option>
       <option >구내식당 보유</option>
       <option >면접 후 식대결정</option>
      </select>
      <select name="pto" id="pto">	      	       
       <option >연차</option>
       <option >리프레쉬 지급</option>
       <option >포상휴가 많음</option>
       <option >연차 표준준수</option>
      </select>
       <input type="text" name="prek_etc" id="prek_etc" placeholder="추가복지를 입력하세요"/>
     </td>
   </tr>
  <tr>
     <td>면접은 어떻게 진행되나요?</td>
     <td> 
      <select name="meeting_num" id="meeting_num">	      	       
       <option >면접인원</option>
       <option >다수 지원자 동시 면접</option>
       <option >1명 지원자 다수 면졉관</option>
       <option >1명 지원자 소수 면접관</option>
      </select>
      <select name="meeting_count" id="meeting_count">	      	       
       <option >면접일정</option>
       <option >접수기간 중 수시 면접</option>
       <option >마감 후 1~2주 이내 면접</option>
       <option >공고내 정해진 면접날짜</option>
      </select>
     </td>
   </tr>
  </table>`
 
  //버튼 클릭
    let click = 0;
  $(document).on('click', '#btnAddFile2', function() {
  if (click == 0) {
      $('.sub-talkout').append(addRow);
      click = 1;
  } else {		
      $('.sub-talkout').empty();
      click = 0;
  }
});

 //이미지추가
    $('.upimage').on('change', function() {
               const file = this.files[0];
               console.log(file)
               if (file) {
                   const reader = new FileReader();
                   reader.onload = function(e) {
                       $('.preview').attr('src', e.target.result).show();
                   }
                   reader.readAsDataURL(file); 
               }
           });	 
	 
	 
//변수
const formEl = document.getElementsByTagName('form')[0];	 
const links = document.querySelectorAll(".link");

//사이드 바 클릭시

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



	 
//기술 스택 
const techs = [];

<c:forEach var="skill" items="${skillList}">
techs.push('${skill.skill_name}');
</c:forEach>

//기술 입력 필드에서 Enter 키 입력 처리
$('#skill').on("keyup", function(key) {
   if (key.keyCode === 13) { 
       const inputValue = $(this).val().trim(); 
       if (techs.includes(inputValue)) {
    	   
    	   const newDiv = $('<div class="pSkill"></div>').text(inputValue).append('<p class="skillDelete"> &nbsp; x &nbsp; </p>')
    	                                                 .append('<input type="hidden" name="skill_name" value="' + inputValue + '"/>'); 
           $('#techList').append(newDiv); 
           $(this).val(''); 
       } else {
           alert('유효하지 않은 기술입니다.');
       }
       key.preventDefault(); 
   }
});

$('#techList').on('click', '.skillDelete', function() {
    $(this).parent().remove(); // 클릭한 p 태그의 부모 div 삭제
});

//폼 제출 시 Enter 키 입력방치처리
$(formEl).on('keydown', function(event) {
   if (event.keyCode === 13) {
	   const textarea = document.querySelector('#details'); // textarea의 id를 사용하여 선택
	    if (event.key === 'Enter' && document.activeElement !== textarea) {
	        event.preventDefault(); // textarea가 아닌 경우에만 기본 동작 방지
	    }
   }
});
 

 //폼 제출시 null값 방지
 formEl.onsubmit = function() { 
     if ($('#title').val().trim() == '') {
         alert('제목을 입력하세요');
         $('#title').focus();
         return false;
     } else if ($('.upimage').val().trim() == '') {
         alert('사진을 업로드하세요');
         $('.upimage').focus();
         return false;         
     }else if ($('#field').val() == '직무') {
         alert('희망직무를 선택하세요');
         $('#field').focus();
         return false;         
     } else if ($('#salary').val().trim() == '') {
         alert('연봉을 입력하세요');
         $('#salary').focus();
         return false;
     }else if ($('#date').val().trim() == '') {
         alert('마감일을 지정하세요');
         $('#date').focus();
         return false;
     } else if ($('#eForm').val() == '근무형태') {
         alert('고용형태를 선택하세요');
         $('#eForm').focus();
         return false;         
     } else if ($('#region').val() == '근무지역') {
         alert('지역을 선택하세요');
         $('#region').focus();
         return false;         
     }  else if ($('#details').val().trim() == '') {
         alert('상세내용을 작성하세요');
         $('#details').focus();
         return false;    
     }else if ($('#cloth').val() == '출근복장') {
         alert('출근복장을 선택하세요');
         $('#cloth').focus();
         return false;    
     }else if ($('#age').val() == '연령대') {
         alert('연령대를 선택하세요');
         $('#age').focus();
         return false;    
     }else if ($('#prek').val() == '식비') {
         alert('식비를 선택하세요');
         $('#prek').focus();
         return false;    
     }else if ($('#pto').val() == '연차') {
         alert('연차를 선택하세요');
         $('#pto').focus();
         return false;    
     }else if ($('#meeting_num').val() == '면접인원') {
         alert('면접인원을 선택하세요');
         $('#meeting_num').focus();
         return false;    
     }else if ($('#meeting_count').val() == '면접일정') {
         alert('면접일정을 선택하세요');
         $('#meeting_count').focus();
         return false;    
     }else {
        	 
    	
        	 return true;
         }
         
   
 };


 })
 </script>
 
 
 
</body>
</html>