<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Создание заявки</title>
</head>
<body>

<h2>Форма заявки</h2>
<form action="${pageContext.request.contextPath}/save-request"
      method="post">
    <p>
        Имя:<br>
        <input type="text" name="name">
    </p>
    <p>
        Email:<br>
        <input type="text" name="email">
    </p>
    <p>
        Текст заявки:<br>
        <textarea name="message" rows="5" cols="30"></textarea>
    </p>
    <button type="submit">Сохранить заявку</button>
</form>
</body>
</html>