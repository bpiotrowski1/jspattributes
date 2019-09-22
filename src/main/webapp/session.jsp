<%@ page import="java.util.Enumeration" %>
<%@ include file="header.jsp" %>
<div class="container">
    <h1>Session</h1>
    <hr/>
    <p>
    <table class="table table-dark">
        <th>Nazwa</th>
        <th>Wartosc</th>
        <tr>
            <%
                Enumeration<String> attributes = session.getAttributeNames();
                while (attributes.hasMoreElements()) {
                    String name = attributes.nextElement();
                    Object attribute = session.getAttribute(name);
                    out.print("<tr>");
                    out.print("<td>" + name + "</td><td>" + attribute.toString() + "</td>");
                    out.print("</tr>");
                }
            %>
        </tr>
    </table>
    </p>
</div>
<%@ include file="footer.jsp" %>