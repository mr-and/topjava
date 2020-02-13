<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Meal list</title>
   <style>
            .normal {
                color: green;
            }

            .excess {
                color: red;
            }
        </style>
</head>
<body>
<section>
    <h2><a href="index.html">Home</a></h2>
    <h3>Meal list</h3>
    <hr>

    <table border="1">
        <thead>
        <tr>
            <th>date</th>
            <th>description</th>
            <th>calories</th>
        </tr>
        <c:forEach items="${requestScope.mealList}" var="meal">
            <jsp:useBean id="meal" type="ru.javawebinar.topjava.model.MealTo"/>
            <tr class="${meal.excess ? 'excess': 'normal'}">
                <td>
                        ${meal.dateTime.toLocalDate()} ${meal.dateTime.toLocalTime()}
                </td>
                <td>
                        ${meal.description}
                </td>
                <td>
                        ${meal.calories}
                </td>
            </tr>
        </c:forEach>
        </thead>

    </table>
</section>


</body>
</html>