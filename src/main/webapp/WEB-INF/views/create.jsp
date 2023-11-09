<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 09/11/2023
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        h2  {
            color: cadetblue;
        }
        input   {
            height: 30px;
            width: 300px;
            margin-top: 10px;
            margin-bottom: 10px;
            float: right;
        }
        tr , td {
            width: 100%;
        }
        td{
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        button {
            height: 30px;
            float: inherit;
        }
    </style>
</head>
<body>
<center>
    <h2>FORM ADD STUDENT</h2>

    <form action="/list/create" method="post">
        <table>

            <tr>
                <td><label for="name">Name : </label><input id="name" type="text" name="name" placeholder="Name"></td>
            </tr>
            <tr>
                <td><label for="email">Email : </label> <input id="email" type="text" name="email" placeholder="Email"></td>
            </tr>
            <tr>
                <td><label for="birthday">Birthday : </label><input id="birthday" type="text" name="birthday" placeholder="Birth Day"></td>
            </tr>
            <tr>
                <td><label for="address">Address : </label><input id="address" type="text" name="address" placeholder="Address"></td>
            </tr>
            <tr>
                <td><label for="123">Class Id : </label><input id ="123" type="text" name="classId" placeholder="Class"></td>
            </tr>
            <tr>
                <td>
                    <button type="submit">Submit</button>
                </td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>