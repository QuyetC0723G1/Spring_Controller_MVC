<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 09/11/2023
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
          integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
          crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
          crossorigin="anonymous"></script>
  <style>
    table, th, td {
      border: 1px solid #b7b4b4;
    }
    tr {
      text-align: center;
    }
    th, td {
      padding: 10px;
    }
    table {
      border-collapse: collapse;
      width: 90%;
      background-color: #cccccc;
    }
    tr:nth-child(even) {
      background-color: rgba(150, 212, 212, 0.4);
    }

    tr:nth-child(even) {
      background-color: #D6EEEE;
    }
    .row {
      margin-top: 20px;
      margin-bottom: 20px;
    }
    .inputSearch{
      width: 300px;
      height: 36px;
    }
    button {
      border-radius: 5px;
      box-shadow: #5ea4f3;
      color: indianred;
      width: 100%;
    }
    .btnAdd {
      width: 160px;
    }
    h2 {
      font-size: 40px;
      color: lightseagreen;
    }
    body{
      background-color: linen;
    }
    h2, .inputSearch , table {
      margin: 20px 20px;
    }
  </style>
</head>
<body>
<center>
  <h2>Student List</h2>

  <form action="http://localhost:8080/list/search" method="get">
    <input type="text" name="q" placeholder="Search By Student Name" class="inputSearch">
    <input type="submit" value="Search">
  </form>

  <table>
    <tr>
      <th>Id</th>
      <th>Name</th>
      <th>BirthDay</th>
      <th>Email</th>
      <th>Address</th>
      <th>ClassName</th>
      <th colspan="2">Action</th>
    </tr>

    <c:forEach var="student" items="${list}">

      <tr>
        <td>${student.id}</td>
        <td>${student.name}</td>
        <td>${student.email}</td>
        <td>${student.birthday}</td>
        <td>${student.address}</td>
        <td>${student.className}</td>
        <td>
          <a href="/list/${student.id}"><button>Edit</button></a></td>
        <td><a href="">
          <button onclick="show_confirm(${student.id})">Delete</button></a></td>
      </tr>

    </c:forEach>

  </table>
  <div>
    <a href="http://localhost:8080/list/create"><button class="btnAdd">Add Student</button></a></div>

</center>
<script>
  function show_confirm(id){
    let r = confirm(`Are you sure ?`)
    if(r){
      document.location.href = "http://localhost:8080/list/delete/" + id;
    }
  }

</script>

</body>
</html>
