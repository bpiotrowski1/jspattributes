<%@ include file="header.jsp" %>
<div class="container">
    <h1>Add cookie</h1>
    <hr/>
    <p>
        <form action="?" method="POST">
            <div class="form-group">
                <input name="nazwa" type="text" class="form-control" placeholder="Nazwa cookie" id="nazwa"/>
            </div>
            <div class="form-group">
                <input name="wartosc" type="text" class="form-control" placeholder="Wartosc cookie" id="wartosc"/>
            </div>
            <button type="submit" class="btn btn-primary">Wyslij</button>
        </form>
        <%
            if(request.getParameter("nazwa") != null && !request.getParameter("nazwa").isEmpty() &&
                    request.getParameter("wartosc") != null && !request.getParameter("wartosc").isEmpty()) {
                Cookie cookie = new Cookie(request.getParameter("nazwa"), request.getParameter("wartosc"));
                cookie.setMaxAge(60 * 60 * 24 * 365);
                response.addCookie(cookie);
            }
        %>
    </p>
</div>
<%@ include file="footer.jsp" %>