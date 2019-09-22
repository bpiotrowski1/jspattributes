<%@ include file="header.jsp" %>
<div class="container">
    <h1>Add session</h1>
    <hr/>
    <p>
        <form action="?" method="POST">
            <div class="form-group">
                <input name="nazwa" type="text" class="form-control" placeholder="Nazwa atrybutu" id="nazwa"/>
            </div>
            <div class="form-group">
                <input name="wartosc" type="text" class="form-control" placeholder="Wartosc atrybutu" id="wartosc"/>
            </div>
            <button type="submit" class="btn btn-primary">Wyslij</button>
        </form>
        <%
            if(request.getParameter("nazwa") != null && !request.getParameter("nazwa").isEmpty() &&
                    request.getParameter("wartosc") != null && !request.getParameter("wartosc").isEmpty()) {
                session.setAttribute(request.getParameter("nazwa"), request.getParameter("wartosc"));
            }
        %>
    </p>
</div>
<%@ include file="footer.jsp" %>