<%--
  Created by IntelliJ IDEA.
  User: lianyutao
  Date: 2017/9/8
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--分页--%>
<nav aria-label="Page navigation" class="text-right">
    <ul class="pagination">
        <c:if test="${!page.firstPage}">
            <li>
                <a href="${basePath}/${model}/${page.first}">首页</a>
            </li>

            <li class="active">
                <a href="${basePath}/${model}/${page.prev}">
                    上一页
                </a>
            </li>
        </c:if>
        <c:forEach begin="${page.first}" end="${page.last}" step="1" var="num">
            <li
                    <c:if test="${num == page.pageNo}">
                        class="active"
                    </c:if>
            ><a href="${basePath}/${model}/${num}">${num}</a></li>
        </c:forEach>
        <c:if test="${!page.lastPage}">
            <li class="active">
                <a href="${basePath}/${model}/${page.next}">
                    下一页
                </a>
            </li>
            <li>
                <a href="${basePath}/${model}/${page.last}">
                    尾页
                </a>
            </li>
        </c:if>
    </ul>
</nav>
