<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>길JOB이</title>
    <link rel="stylesheet" href="/css/common.css" />
    <script src="/js/common.js" defer></script>
</head>
<body>
    <%@ include file="/WEB-INF/include/header.jsp"%>
    <main>
        <div class="inner rview myReview">
            <a class="back-btn" href="List">back</a>
            <div class="review-company-profile">
                <div class="company-info">
                    <p class="company-name form-style">내가 한 질문</p>
                </div>
            </div>
            <ul class="myReview-info">

                <li>길JOB이 커뮤니티에 작성한 질문 내역입니다.</li>
                <li>기간에 상관없이 작성하신 모든 게시글을 확인하실 수 있습니다.</li>
                <li>등록된 게시물의 수정 및 삭제가 가능합니다.</li>
            </ul>
            <h2>내가 한 질문</h2>
            <table>
                <colgroup>
                    <col width="20%">
                    <col width="40%">
                    <col width="20%">
                    <col width="10%">
                    <col width="10%">
                </colgroup>
                <thead>
                    <tr>
                        <th>분류</th>
                        <th>제목</th>
                        <th>작성일</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>

                    <c:forEach var="c" items="${cList}">
                        <tr>
                            <td>${c.duty.dutyName}</td>
                            <td class="myReview-title"><a href="/Main/Community/View?communityIdx=${c.communityIdx}" >${c.comTitle}</a></td>
                            <td class="dateupdate"> <fmt:formatDate value="${c.comRegdate}" pattern="yyyy-MM-dd" /></td>
                            <td class="myReview-btn"><a href="/Main/Community/UpdateForm?communityIdx=${c.communityIdx}&userIdx=${c.users.userIdx}">수정</a></td>
                            <td class="myReview-btn"><a href="/Main/Community/Delete?communityIdx=${c.communityIdx}">삭제</a></td>

               

                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </main>
    <%@ include file="/WEB-INF/include/footer.jsp"%>

</body>
</html>