<%@ include file="header.jsp" %>
<div class="container">
    <h1>Cookies</h1>
    <hr/>
    <p>
    <table class="table table-dark">
        <%
            for (Cookie c : request.getCookies()) {
                  out.print("<tr>");
                  out.print("<td>" + c.getName() + "</td><td>" + c.getValue() + "</td>");
                  out.print("</tr>");
            }
        %>
    </table>
    </p>
</div>
<%@ include file="footer.jsp" %>