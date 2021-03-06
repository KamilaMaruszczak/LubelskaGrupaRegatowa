<%--
  Created by IntelliJ IDEA.
  User: kamila
  Date: 14.01.19
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<%@ include file="/WEB-INF/views/head.jsp" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<jsp:useBean id="now" class="java.util.Date"/>
<fmt:formatDate var="year" value="${now}" pattern="yyyy"/>

<body>

<c:if test="${instructor}">
    <%@ include file="/WEB-INF/views/admin/sidebar.jsp" %>
</c:if>



    <div class="border box">
        <div class="row">
            <div class="mx-auto my-4">
                <img class="img-fluid" alt="Responsive image" src="/fragments/images/kalendar.png">
            </div>
        </div>
        <div class="my-4">

            <div class="table-responsive ">
                <table class="table table-striped text-center ">
                    <thead>
                    <tr>

                        <th scope="row" colspan="6"><h3>Lista kursów żeglarskich ${year}</h3></th>
                    </tr>
                    <tr>
                        <th class="align-middle">Data rozpoczęcia</th>
                        <th class="align-middle">Data zakończenia</th>
                        <th class="align-middle">Klasa</th>
                        <th class="align-middle">Instruktor</th>
                        <th class="align-middle">Ilość wolnych miejsc</th>
                        <th class="align-middle">Zapisy</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${courses}" var="item">
                        <tr>
                            <td class="align-middle"><fmt:formatDate value='${item.startDate}'
                                                                     pattern='dd-MM-yyyy'/></td>
                            <td class="align-middle"><fmt:formatDate value='${item.endDate}' pattern='dd-MM-yyyy'/></td>
                            <td class="align-middle"> ${item.type}</td>
                            <td class="align-middle"> instruktor ${item.instructor.name.split(" ",0)[0].toString()}</td>
                            <td class="align-middle">
                                <c:choose>
                                <c:when test="${item.numberOfBoats-item.sailors.size()<0}">
                                    0
                                </c:when>
                                <c:otherwise>
                                    ${item.numberOfBoats-item.sailors.size()}</td>
                            </c:otherwise>
                            </c:choose>

                            <td class="align-middle">

                                <c:if test="${(item.numberOfBoats-item.sailors.size())>0 && item.endDate>now}">

                                    <a href="<c:url value = "/user/course/${item.id}"/>">ZAPISY</a>

                                </c:if>

                            </td>
                        </tr>
                    </c:forEach>

                    </tbody>
                </table>
            </div>

        </div>


    </div>

</body>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</html>
