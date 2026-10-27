
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Заявка сохранена</title>
</head>
<body>

<h2>Заявка успешно сохранена</h2>
<p>Имя: <%= request.getAttribute("name") %></p>
<p>Email: <%= request.getAttribute("email") %></p>
<p>Текст заявки: <%= request.getAttribute("message") %></p>
<a href="${pageContext.request.contextPath}/save-request.jsp">
    Вернуться к форме
</a>
</body>
</html>