<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%>
<br>
<a href='musician.jsp'> Show musicians </a>
<br>
<a href='album.jsp'> Show albums </a>
<br>
<a href='song.jsp'> Show songs </a>
<br>
<a href='logout.jsp'>Log out</a>
<%
    }
%>