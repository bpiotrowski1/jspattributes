<%@ page import="java.util.Enumeration" %>
<%@ include file="header.jsp" %>
<div class="container">
    <h1>Header</h1>
    <hr/>
    <p>
        <table class="table table-dark">
        <th>Nazwa</th>
        <th>Wartosc</th>
        <tr>
        <%
            Enumeration<String> headerNames = request.getHeaderNames();
            while (headerNames.hasMoreElements()) {
                String name = (String) headerNames.nextElement();
                String value = request.getHeader(name);
                out.print("<tr>");
                out.print("<td>" + name + "</td><td>" + value + "</td>");
                out.print("</tr>");
            }
        %>
        </tr>
        </table>
    </p>
</div>
<%@ include file="footer.jsp" %>