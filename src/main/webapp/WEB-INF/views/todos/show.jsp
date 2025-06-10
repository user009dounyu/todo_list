<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">

        <h2>id : ${todo.id} のタスク詳細ページ</h2>

        <p>やること：<c:out value="${todo.content}" /></p>
        <p>作成日時：<fmt:formatDate value="${todo.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></p>
        <p>完了フラグ：
            <c:choose>
                <c:when test="${todo.done}">
                   完了
                </c:when>
                <c:otherwise>
                    <span style="color: red;"> 未完了 </span>
                </c:otherwise>
            </c:choose>
        </p>

        <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
        <p><a href="${pageContext.request.contextPath}/edit?id=${todo.id}">編集する</a></p>

    </c:param>
</c:import>