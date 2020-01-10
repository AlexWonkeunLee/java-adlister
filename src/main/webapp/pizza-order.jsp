<%--
  Created by IntelliJ IDEA.
  User: wonkeunlee00
  Date: 1/10/20
  Time: 9:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza Order</title>
</head>
<body>
<form action="/display-order.jsp" method="POST">
    <label for="crust">Crust Type: </label>
    <select name="crust" id="crust">
        <option value="Regular">Regular</option>
        <option value="Flat">Flat</option>
        <option value="Stuffed">Stuffed</option>
    </select>
    <label for="sauce">Sauce Type: </label>
    <select name="sauce" id="sauce">
        <option value="Tomato">Tomato</option>
        <option value="Alfredo">Alfredo</option>
        <option value="Extra">Extra</option>
    </select>
    <label for="size">Size: </label>
    <select name="size" id="size">
        <option value="Small">Small</option>
        <option value="Medium">Medium</option>
        <option value="Large">Large</option>
    </select>
    <h2>Choose Toppings:</h2>
    Pepperoni:<br>
    Yes<input type="radio" name="pepperoni" value="Yes">
    No<input type="radio" name="pepperoni" value="No"><br>
    Sausage: <br>
    Yes<input type="radio" name="sausage" value="Yes">
    No<input type="radio" name="sausage" value="No"><br>
    Peppers:<br>
    Yes<input type="radio" name="peppers" value="Yes">
    No<input type="radio" name="peppers" value="No"><br>
    Onion: <br>
    Yes<input type="radio" name="onion" value="Yes">
    No<input type="radio" name="onion" value="No"><br>
    <label for="address">Address: </label>
    <input type="text" name="address" id="address">
    <input type="submit" value="Choose">

</form>

</body>
</html>
