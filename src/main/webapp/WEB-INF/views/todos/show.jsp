<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${todo != null}">

            <h2>id : ${todo.id} のタスク詳細ページ</h2>
            
            <table>
                    <tbody>
                        <tr>
                            <th>やること</th>
                            <td><c:out value="${todo.content}" /></td>
                        </tr>
                        <tr>
                            <th>作成日時</th>
                            <td><fmt:formatDate value="${todo.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        </tr>
                        <tr>
                            <th>完了フラグ</th>
                            <td>
                                <c:choose>
                                    <c:when test="${todo.done}">
                                       完了
                                    </c:when>
                                    <c:otherwise>
                                        <span style="color: red;"> 未完了 </span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                    </tbody>
                </table>
    
            <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
            <p><a href="${pageContext.request.contextPath}/edit?id=${todo.id}">編集する</a></p>
        
            </c:when>
            
            <c:otherwise>
                <h2>お探しのデータは見つかりませんでした。</h2>
            </c:otherwise>
            
        </c:choose>
    </c:param>
</c:import>