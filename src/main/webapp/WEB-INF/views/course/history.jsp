<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html>
<%@ include file="/WEB-INF/views/head.jsp" %>
<%@ include file="/WEB-INF/views/header.jsp" %>

<body>
<jsp:useBean id="now" class="java.util.Date"/>
<fmt:formatDate var="year" value="${now}" pattern="yyyy"/>
<%@ include file="/WEB-INF/views/admin/sidebar.jsp" %>


<section>


    <div class="border box">

        <div class="my-4">
            <div class="table-responsive">
                <table id="courses" class="table table-fixed w-100 d-block d-md-table text-center align-middle">
                    <thead>
                    <tr>
                        <th scope="row" colspan="7" class="align-middle"><h3>Historia kursów żeglarskich</h3></th>
                    </tr>
                    <tr>
                        <th class="align-middle">Data rozpoczęcia</th>
                        <th class="align-middle">Data zakończenia</th>
                        <th class="align-middle">Klasa</th>
                        <th class="align-middle">Instruktor</th>
                        <th class="align-middle">Ilość zapisów</th>

                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${courses}" var="item" varStatus="i">
                        <%--<tr data-toggle="collapse" data-target="#${i.index}"--%>
                        <%--class="table-active font-weight-bold accordion-toggle ">--%>
                        <tr data-toggle="collapse" data-target="#${i.index}" class="accordion-toggle bold">
                            <td class="align-middle"><fmt:formatDate value='${item.startDate}'
                                                                     pattern='dd-MM-yyyy'/></td>
                            <td class="align-middle"><fmt:formatDate value='${item.endDate}' pattern='dd-MM-yyyy'/></td>
                            <td class="align-middle"> ${item.type}</td>
                            <td class="align-middle"> ${item.instructor.name}</td>
                            <td class="align-middle"> ${item.sailors.size()}</td>


                        </tr>
                        <tr>
                            <td colspan="7" class="hiddenRow">
                                    <%--<div data-role="collapsible" class="mx-auto width-inherit" id="${i.index}" data-collapsed="true">--%>
                                <div class="accordian-body collapse mx-auto" id="${i.index}">
                                    <div class="table-responsive">
                                        <table class="table width-inherit" id="sailors">
                                            <tr class="table-active">
                                                <td class="align-middle"></td>
                                                <td class="align-middle">Kursant</td>
                                                <td class="align-middle">Wiek</td>
                                                <td class="align-middle">Zapis</td>
                                                <td class="align-middle">Rodzic</td>
                                                <td class="align-middle">Potwierdzony</td>
                                                <td class="align-middle text-center">Wpłata</td>


                                            </tr>

                                            <tbody>
                                            <c:forEach items="${item.sailors}" var="sailorCourse" varStatus="j">
                                                <tr class="">
                                                    <td class="align-middle pa">${j.index+1}</td>
                                                    <td class="align-middle">${sailorCourse.sailor.name}</td>
                                                    <td class="align-middle"><c:out
                                                            value="${year - sailorCourse.sailor.yearOfBirth}"/> lat
                                                    </td>
                                                    <td class="align-middle"><fmt:formatDate
                                                            value='${sailorCourse.entryDate}'
                                                            pattern='dd-MM-yyyy'/></td>
                                                    <td class="align-middle text-center"><i
                                                            class="far fa-address-card blue ismall"></i>
                                                    </td>
                                                    <td class="align-middle">
                                                        <c:choose>
                                                            <c:when test="${sailorCourse.confirmed}">
                                                                <span class="bold">POTWIERDZONY </span>
                                                            </c:when>

                                                        </c:choose></td>
                                                    <td class="align-middle text-center">
                                                        <span class="bold">${sailorCourse.paid}</span></td>


                                                </tr>
                                                <tr class="hide table-info" id="parent">
                                                    <td colspan="9" class="text-center">
                                                        Rodzic: ${sailorCourse.sailor.user.name} &nbsp;
                                                        tel: ${sailorCourse.sailor.user.phone} &nbsp;
                                                        email: ${sailorCourse.sailor.user.email}
                                                    </td>
                                                </tr>


                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript">

    $('.accordian-body').on('show.bs.collapse', function () {
        $(this).closest("table")
            .find(".collapse.in")
            .not(this)
            .collapse('toggle')
    })

    var courses = $('#courses');
    courses.on("click", "i.far.fa-address-card", function () {
        $(this).parent().parent().next("#parent")
            .toggle();

    })

    courses.find("a.trigger").bind("click", function (event) {
        event.preventDefault();
        event.stopImmediatePropagation();
        $(this).next("span.tooltiptext")
            .toggleClass("hide");

    })

    courses.find("span.triggerhide").bind("click", function (event) {
        event.preventDefault();
        $(this).parent()
            .toggleClass("hide");

    })


</script>


</body>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</html>