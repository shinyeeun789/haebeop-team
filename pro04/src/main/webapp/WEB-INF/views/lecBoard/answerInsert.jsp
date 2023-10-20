<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Q&A 답변 등록</title>
    <jsp:include page="../layout/head.jsp"/>

    <style>
        input {
            border-radius: 5px;
            height: 35px;
            border: 1px solid #cbcbcb;
            width: 100%;
        }
        textarea {
            resize: none;
            width: 100%;
            height: 400px;
            border: 1px solid #cbcbcb;
            border-radius: 5px;
        }
    </style>
</head>

<!-- 헤더 시작 -->
<jsp:include page="../layout/header.jsp"/>
<!-- 헤더 끝 -->
<!-- 브레드크럼 시작 -->

                                <table class="table project-table table-centered table-nowrap">
                                    <tbody>
                                    <tr>
                                        <input type="hidden" value="${detail.qno}" name="par" id="par">
                                        <th class="text-center" style="vertical-align: middle; width: 15%;">제목</th>
                                        <td><input type="text" id="title" name="title" placeholder="제목을 입력하세요" class="pl-2" required autofocus></td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" style="font-size: 15px;">
                                            <textarea name="content" id="content" cols="100" rows="8" maxlength="800" class="single-textarea" style="height: 400px; border: 1px solid #cbcbcb" placeholder="질문 내용을 입력하세요"></textarea>
                                            <script>
                                                $(document).ready(function () { $("#content").cleditor(); });
                                            </script>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                                <div class="btn-group float-right mr-3">
                                    <a href="${path}/qna/list" class="btn btn-outline-dark">목록</a>
                                    <input type="submit" class="btn btn-dark" style="height: 100%" value="등록">
                                </div>

