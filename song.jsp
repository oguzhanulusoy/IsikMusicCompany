<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Isik Music Company</title>
    </head>
    <body>
        <sql:setDataSource

            driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost:3306/mydb"
            user="root" password=""
            />

        <sql:query var="Song"   >
            SELECT * FROM Song;
        </sql:query>



        <div align="center">
            <table border="1" cellpadding="5">
                <caption><h2>List of Songs</h2></caption>
                <tr>
                    <th>ID of Song</th>
                    <th>Title </th>
                    <th>Author </th>
                    <th>Belongs to</th>
                    <th>Song Price </th>
                    <th>Action </th>
                </tr>
                <c:forEach var="Song" items="${Song.rows}">
                    <tr>
                        <td><c:out value="${Song.idSong}" /></td>
                        <td><c:out value="${Song.title}" /></td>
                        <td><c:out value="${Song.author}" /></td>
                        <td><c:out value="${Song.Album_idAlbum}" /></td>
                        <td><c:out value="${Song.songPrice}" /></td>
                        <td>  <button onclick="added.jsp"><a href='added.jsp'> Buy </button></td>


                    </tr>
                </c:forEach>


            </table>
        </div>
    </body>
</html>