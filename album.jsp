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

        <sql:query var="Album"   >
            SELECT idAlbum, title, format, album_identifier, albumPrice FROM Album;
        </sql:query>



        <div align="center">
            <table border="1" cellpadding="5">
                <caption><h2>List of albums</h2></caption>
                <tr>
                    <th>ID of Album</th>

                    <th>Title </th>
                    <th>Format </th>
                    <th>Album Info </th>
                    <th>Album Price </th>
                    <th>Action </th>
                </tr>
                <c:forEach var="Album" items="${Album.rows}">
                    <tr>
                        <td><c:out value="${Album.idAlbum}" /></td>
                        <td><c:out value="${Album.title}" /></td>

                        


                    </tr>
                </c:forEach>


            </table>
        </div>
    </body>
</html>