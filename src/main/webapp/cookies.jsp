<%@ include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String deleteCookieName = request.getParameter("cookieToDelete");
    if(deleteCookieName != null) {
        for (Cookie c : request.getCookies()) {
            if(c.getName().equals(deleteCookieName)) {
                c.setMaxAge(0);
                response.addCookie(c);
                response.setHeader("REFRESH", "0");
            }
        }
    }

%>
<div class="container">
    <h1>Cookies</h1>
    <hr/>
    <p>
    <table class="table table-dark">
        <th>Nazwa</th>
        <th>Wartosc</th>
        <c:forEach var="cookieVar" items="${cookie}">
            <c:url var="deleteCookie" value="cookies.jsp">
                <c:param name="cookieToDelete" value="${cookieVar.key}"/>
            </c:url>
            <tr>
                <td>${cookieVar.key}</td>
                <td>${cookieVar.value.value}</td>
                <td><a href="${deleteCookie}">Delete cookie</a></td>
            </tr>
        </c:forEach>
        <%--
            for (Cookie c : request.getCookies()) {
                out.print("<tr>");
                out.print("<td>" + c.getName() + "</td><td>" + c.getValue() + "</td>");
                out.print("</tr>");
            }
        --%>
    </table>
    </p>
</div>
<%@ include file="footer.jsp" %>