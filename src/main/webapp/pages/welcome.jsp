<%--suppress ALL --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>NAU SP-325</title>
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
<h2 align="center">Our group SP-325</h2>
<div class="left">
    <a href="http://nau.edu.ua/" target="_blank"><img align="left" src="<c:url value='/pages/images/NAU.png'/>"
                                                      alt="NAU logo"/> </a> <br>
    <a href="https://vk.com/club101851109" target="_blank">Our community</a> <br>

    <a href="http://rozklad.nau.edu.ua/timetable/group/%D0%9D%D0%9D%D0%86%D0%9A%D0%86%D0%A2%20325/1">Schedule of 1-st part</a> <br>

    <a href="http://rozklad.nau.edu.ua/timetable/group/%D0%9D%D0%9D%D0%86%D0%9A%D0%86%D0%A2%20325/2">Schedule of 2-nd part</a><br>
</div>
<div class="right">
    <table align="center" cellpadding="20" width="100%">
        <tr align="center">
            <td colspan="2">The students of 325 group of National Aviation University</td>
            <td width="5%" align="right">
                <a href="login"><input type="submit" value="Login"></a>
                <br>
                <a href="register">register</a>
            </td>
        </tr>
        <tr align="center">
            <td colspan="2"> The 325 group is consist of 19 peoples and there is only one female.</td>
        </tr>

        <tr align="center">
            <td colspan="2">
                As you can see behind, our group is very interesting but we have not a lot of common photos.
                I think we are not so friendly and have different interest
            </td>
        </tr>
        <tr align="center">
            <td colspan="2">
                Lets display you the contains of group. P.S. The chair is
                <a href="http://ccs.nau.edu.ua/">computer systems of management</a>
            </td>
        </tr>


        <c:forEach var="user" items="${result}">
            <tr>
                <td width="25%">
                    <a href="${pageContext.servletContext.contextPath}/photoServlet?id=${user.id}&crop=false">
                        <img src="${pageContext.servletContext.contextPath}/photoServlet?id=${user.id}&crop=true"
                             alt="${user.name} photo" height="200"/>
                    </a>

                </td>
                <td align="left" width="55%">
                    Student: <b>${user.name}</b><br>
                    About him: <em>${user.description}</em>
                </td>
            </tr>
        </c:forEach>
    </table>
    <p align="center">The developer is <a href="https://www.linkedin.com/in/vlad-obochuk-ab9494ba/">Vlad Obochuk</a>.
        You can see source of the project on <a href="https://github.com/Obochuk/GroupPage">github</a> </p>
</div>
</body>

</html>
