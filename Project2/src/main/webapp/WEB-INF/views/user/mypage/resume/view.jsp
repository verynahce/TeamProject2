<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<!DOCTYpE html>
<html>
<head>
<meta charset="UTF-8">
<title>길JOB이</title>
<link rel="stylesheet" href="/css/common.css" />
<script src="https://cdn.jsdelivr.net/npm/browser-scss@1.0.3/dist/browser-scss.min.js"></script>
<script src="/js/common.js" defer></script>

<style>
main {
   background-color:#F0F2F5;

}
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
   background-color: #FFEF96;
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
    min-height: 1250px;
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
    padding-bottom: 14px; 
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
              padding-bottom:30px; 
              padding-top: 30px;  
            }   
    .sub-skill {
                   padding-bottom:15px; 
                   padding-top: 15px;
                   height: 74px;      
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
           padding-left: 180px;
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
   				 overflow: auto;
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

/*서브 - 경력긴글*/    
#sub-duty {
 td:nth-child(1) > div {
     					width:100%;
     					min-height: 100px;
      					}   
 td:nth-child(2) > div {
     					width:100%;
     					min-height: 100px;
      						color: #767676;
      					}
 } 
  
  
     
   /*기술스택 */   
.sub-skill-layout {
     display:flex;
     
     div {
     padding:12px;
     margin:6px;
     background-color:#EBECF1; 
     border-radius: 8px;
     color:#555555;
     font-size: 13px;
     font-weight: 400;
     letter-spacing: 0.5px;
     }
     
     div:nth-child(1) {
      margin-left: 0px;
     }
} 

/*버튼*/

.btn-layout {   margin: 0 auto;
}
 .btn {
   display: inline-block;
    width: 200px; 
    height: 60px;   
    border-radius: 8px;
 
    a {
    display: block;
    text-decoration: none; 
    width: 100%; 
    height: 100%;
    text-align: center;
    line-height: 60px;
   
 }
 }
  .btn-back {
  background: #585766; 
  color: white;

   &:hover {
     background-color:#666577;
     color:white;
     
   }
 }
 .btn-update {
   
   color: #585766;
   border : 1px solid #585766;
   &:hover {
     background-color:#F8F8F8;
     color:#585766;

   }
 }
.noob{
	padding:20px 0 0 5px;
	color: #333333; 
    font-size: 16px;
    font-weight: 400;
}
  .sub-content pre {
    white-space: pre-wrap; /* 긴 텍스트가 줄바꿈 되도록 설정 */
    word-wrap: break-word; /* 긴 단어가 줄바꿈 되도록 설정 */
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
         <tr><td><a href="/User/MyPage/Home/View" class="link"><img src="/images/myhome2.svg" class="img" data-hover="/images/myhome.svg">MY홈</a></td></tr>
         <tr><td><a href="/User/MyPage/Resume/List?user_idx=${user_idx}" class="active-color"><img src="/images/icon22.svg" class="img">이력서</a></td></tr>
         <tr><td><a href="/User/MyPage/BookMark/List?user_idx=${user_idx}" class="link"><img src="/images/icon3.svg" class="img" data-hover="/images/icon33.svg">관심기업 / 받은제의</a></td></tr>
         <tr><td><a href="/User/MyPage/ApplyList/List?user_idx=${user_idx}" class="link"><img src="/images/arrow.svg" class="img" data-hover="/images/arrow2.svg">지원내역</a></td></tr>
         <tr><td><a href="/User/MyPage/Notice?user_idx=${user_idx}" class="link"><img src="/images/Mail.svg" class="img" data-hover="/images/mail3.svg">수신함</a></td></tr>
        </table>
      </div>
      
      <div class="container" >
      <div class="contain-body">       
      <h2 class="main-title">${resumeVo.resume_title}</h2>
      <hr>
      <div id="info">
      <c:choose>
      <c:when test="${imagePath != '0'}">
         <img src="/image/read?path=${imagePath}" alt="User Image" >
       </c:when> 
       <c:otherwise>
         <img src="/images/icon/user-profile.png" alt="User Image" >
       </c:otherwise>
       </c:choose> 
        <div id="info-content">
           <h3 id="info-title">${resumeVo.user_name}</h3>
           <p>${resumeVo.user_gender},${resumeVo.user_age}세 (${resumeVo.user_year}년)</p>
           <p>${resumeVo.user_tel} &nbsp; &nbsp;|&nbsp; &nbsp; ${resumeVo.user_email}</p>
        <c:choose> 
        <c:when test="${not empty resumeVo.user_address}">
           <p>${resumeVo.user_address}<p/>
        </c:when>
        <c:otherwise>
        <p>주소미기입<p/>
        </c:otherwise>
        </c:choose> 
        </div>
      </div>

        
      <div class="sub-filed">
        <h4 class="sub-title">학력</h4>
        <hr>
        <table class="sub-topic">
        <tr>
          <td>최종학력</td>
          <td>${resumeVo.eb_name} &nbsp;${resumeVo.edu_name} </td>
        </tr>	
		
        </table>
      </div>
     
    <c:if test="${not empty SkillList}">
      <div class="sub-filed">
        <h4 class="sub-title">업무 및 스킬</h4>
        <hr>
        <table class="sub-topic"> 
         <tr>
		   <td colspan="2" class="sub-skill">
           <div class="sub-skill-layout">
          <c:forEach var="skill" items="${SkillList}">
              <div>${skill.skill_name}</div> 
          </c:forEach>
           </div> 
         </td>
		</tr>
        </table>
      </div>
    </c:if>
    
    
      <div class="sub-filed">
	    <h4 class="sub-title">희망 근무조건</h4>
	    <hr> 
	    <table class="sub-topic">
		<tr>
	      <td>희망근무지</td>
	      <td>${resumeVo.city_name}</td>
	    </tr>
	    <tr>
	      <td>희망직무</td>
	      <td>${resumeVo.duty_name}</td>
	    </tr>
	    <tr>
	      <td>희망고용형태</td>
	      <td>${resumeVo.emp_name}</td>
	    </tr>
	   </table>
	  </div>	  
	  
	   
       <div class="sub-filed">
	    <h4 class="sub-title">경력</h4>
	    <hr> 
         <c:choose>
		  <c:when test="${not empty resumeVo.career_cname}">
	    <table class="sub-topic">
	     <tr>
	       <td>회사명</td>
	       <td>${resumeVo.career_cname}</td>
	     </tr>
   
        <tr>
          <td>근무기간</td>
          <td>${resumeVo.career_sdate} ~ ${resumeVo.career_edate}</td>
        </tr>
        <tr id="sub-duty">
           <td><div>담당업무</div></td>
           <td><div>${resumeVo.career_description}</div></td>
        </tr>
       </table>
         </c:when>
	  	<c:otherwise>
	  		<div class="noob">신입</div>
	  	</c:otherwise>
	  </c:choose>
     </div>
 
	
      <div class="sub-filed">
	    <h4 class="sub-title" >자기소개서</h4>
	    <hr> 
	    <div class ="sub-content"><pre>${resumeVo.cover_letter}</pre></div>
	  </div>     
	  
	  <c:if test="${not empty pfvoList}">
      <div class="sub-filed">
	    <h4 class="sub-title" >파일업로드</h4>
	    <hr> 
	    <c:forEach var="p" items="${pfvoList}">
       <div class="sub-filedown">
         <a href="/filedownload/${p.portfolio_idx}">
       <img src="/images/resume/link1.png"/>&nbsp;&nbsp;&nbsp;
       ${p.filename}
       </a>
       </div>
       </c:forEach>
	  </div>     
     </c:if>
    
          </div>
          <div class="btn-layout">
              <div class="btn btn-update"><a href ="/User/MyPage/Resume/UpdateForm?resume_idx=${resumeVo.resume_idx}">수정</a></div>
              <div class="btn btn-back"><a href ="/User/MyPage/Resume/List?user_idx=${user_idx}">돌아가기</a></div>
         </div>
      </div>
   </div>
 </div>

</main>

 
 <%@include file="/WEB-INF/include/footer.jsp" %>
 
 <script>
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
	 
       imagePath1 ='${ifvo.image_path}';
 </script>
 
</body>
</html>