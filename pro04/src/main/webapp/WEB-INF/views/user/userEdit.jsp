<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>나의정보수정</title>
    <jsp:include page="../layout/head.jsp"/>
    <style>
        .label {font-weight: bold !important; font-size: 18px;}
        .column { margin-top: 20px !important;}
    </style>
</head>
<body>
<!-- header Start -->
<jsp:include page="../layout/header.jsp" />
<!-- header End -->

<!-- banner Start -->
<section class="breadcumb-area bg-img bg-overlay" style="background-image: url(${paht}/resources/img/bg-img/breadcumb3.jpg);">
    <div class="bradcumbContent">
        <p>See what’s new</p>
        <h2>나의정보수정</h2>
    </div>
</section>
<!-- banner End -->

<!-- userEdit Start -->
<!-- sidemenu Start -->
<div class="container-xl" style="float:right;">
    <div class="row">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="${path}/user/myPage">${user.name} 님</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${path}/user/edit">내정보</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${path}/user/lecture">수강내역</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${path}/user/payment">주문/배송내역</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>
<!--sidemenu End -->

<div class="col-xl-6" style="margin:100px auto;">
    <div class="container justify-content-center gx-4">
        <div class="card box-shadow-b p-2 p-md-3">
            <section class="section" style="padding-top: 20px; padding-bottom: 30px;">
                <div class="container" style="width:80%;" >
                    <div class="p-6 shadow rounded content">
                        <form name="frm1" id="frm1" action="${path}/user/edit" class="columns is-multiline is-centered" method="post" onsubmit="return updateCheck(this)">
                            <div class="column is-10-tablet">
                                <label for="id" class="label"> 아이디 </label>
                                <div class="control">
                                    <input type="text" class="form-control" name="id" id="id" size="100" value="${user.id }" readonly required>
                                </div>
                            </div>
                            <div class="column is-10-tablet">
                                <label for="pw" class="label"> 비밀번호 </label>
                                <div class="control">
                                    <input type="password" id="pw" name="pw" class="form-control" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$" maxlength="16" required>
                                    <p>(최소 8자리에서 최대 16자리까지, 숫자, 영문 대소문자, 특수문자가 각 1 문자 이상 포함되어야 함)</p>
                                </div>
                            </div>
                            <div class="column is-10-tablet">
                                <label for="pw2" class="label"> 비밀번호 확인 </label>
                                <div class="control">
                                    <input type="password" class="form-control" name="pw2" id="pw2"   required>
                                </div>
                            </div>
                            <div class="column is-10-tablet">
                                <label for="name" class="label"> 이름 </label>
                                <div class="control">
                                    <input type="text" class="form-control" name="name" id="name" value="${user.name }" required>
                                </div>
                            </div>
                            <div class="column is-10-tablet">
                                <label for="email" class="label"> 이메일 </label>
                                <div class="control">
                                    <input type="email" name="email" id="email" class="form-control" value="${user.email }" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required>
                                </div>
                            </div>
                            <div class="column is-10-tablet">
                                <label for="tel" class="label"> 전화번호 </label>
                                <div class="control">
                                    <input type="tel" class="form-control" name="tel" id="tel"  value="${user.tel }" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" required>
                                    <p>(특수기호 포함하여 000-0000-0000 으로 입력해주세요)</p>
                                </div>
                            </div>
                            <div class="column is-10-tablet">
                                <label for="tel" class="label"> 주소 </label>
                                <div class="control">
                                    <input type="text" name="addr1" id="addr1" class="form-control" value="${user.addr1 }"  >
                                    <input type="text" name="addr2" id="addr2" class="form-control mt-3" value="${user.addr2 }">
                                    <div class="columns"  style="display: flex; margin-top: 20px;">
                                        <div class="column is-9-tablet">
                                            <div class="control">
                                                <input type="text" id="postcode" name="postcode" value="${user.postcode }" class="form-control" style="width: 550px; margin-right: 40px;}">
                                            </div>
                                        </div>
                                        <div class="column is-3-tablet pl-0">
                                            <button type="button" class="btn btn-secondary" onclick="findAddr()" style="width: 150px;"> 우편번호 검색 </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="column is-10-tablet">
                                <label for="tel" class="label"> 생년월일 </label>
                                <div class="control">
                                    <fmt:parseDate value="${user.birth }" var="birth" pattern="yyyy-MM-dd" />
                                    <span style="display:none"><fmt:formatDate var="br" value="${birth }" pattern="yyyy-MM-dd" /></span>
                                    <input type="birth" name="birth" id="birth" max="${minYear}-12-31" value="${br }" class="form-control">
                                </div>
                            </div>
                            <div class="buttons is-right" style="display: flex; justify-content: center; margin-top: 30px;">
                                <input type="submit" class="btn btn-dark" value="회원정보수정" style="margin-right:10px;">
                                <c:if test="${sid!='admin' }">
                                    <a href="${path }/user/delete?id=${sid }" class="btn btn-danger" style="margin-right: 10px;">회원 탈퇴</a>
                                </c:if>
                                <c:if test="${sid=='admin' }">
                                    <a href="${path }/admin/userList" class="btn btn-secondary">회원 목록</a>
                                </c:if>
                            </div>
                        </form>
                        <script>
                            function updateCheck(f){
                                if(f.userpw.value!=f.userpw2.value){
                                    alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
                                    return false;
                                }
                            }
                        </script>
                        <script>
                            function findAddr() {
                                new daum.Postcode({
                                    oncomplete: function(data) {
                                        console.log(data);
                                        var roadAddr = data.roadAddress;
                                        var jibunAddr = data.jibunAddress;
                                        document.getElementById("postcode").value = data.zonecode;
                                        if(roadAddr !== '') {
                                            document.getElementById("addr1").value = roadAddr;
                                        } else if(jibunAddr !== ''){
                                            document.getElementById("addr1").value = jibunAddr;
                                        }
                                    }
                                }).open();
                            }
                        </script>
                        <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
<!-- userEdit End -->

<!-- Footer Start -->
<jsp:include page="../layout/footer.jsp" />
<!-- Footer End -->
</body>
</html>