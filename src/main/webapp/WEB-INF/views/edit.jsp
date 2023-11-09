<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 09/11/2023
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
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
    }
  </style>
</head>
<body>
<center>
  <h2>FORM EDIT STUDENT</h2>

  <form action="/list/edit" method="post">
    <table>

      <tr>
        <td><label for="name">Name : </label><input type="text" id="name" value="${student.name}" name="name" placeholder="Name"></td>
      </tr>

      <tr>
        <td><label for="email">Email : </label> <input type="text" id="email"  value="${student.email}"  name="email" placeholder="Email"></td>
      </tr>
      <tr>
        <td><label for="birthday">Birthday : </label><input type="text" id="birthday" value="${student.birthday}"  name="birthday" placeholder="Birth Day"></td>
      </tr>
      <tr>
        <td><label for="address">Address : </label> <input type="text" id="address"  value="${student.address}" name="address" placeholder="Address"></td>
      </tr>
      <tr>
        <td><label for="classId">Class Id : </label> <input type="text" id="classId"  value="${student.classId}" name="classId" placeholder="Class"></td>
      </tr>
      <tr><td><input type="hidden" id="id"  value="${student.id}" name="id"></td></tr>
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
</body>
</html>
