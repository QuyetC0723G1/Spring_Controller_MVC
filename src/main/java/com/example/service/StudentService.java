package com.example.service;

import com.example.connection.DatabaseConnection;
import com.example.model.Student;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class StudentService implements IStudent<Student> {
    Connection connection = DatabaseConnection.getConnection();
    List<Student> students;

    public StudentService() {
    }

    @Override
    public void add(Student student) {
        String sql = "insert into student(name, email, birthday, address, classId)\n" +
                "values (?, ? ,? ,? ,?);";
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,student.getName());
            preparedStatement.setString(2,student.getEmail());
            preparedStatement.setDate(3, Date.valueOf(student.getBirthday()));
            preparedStatement.setString(4,student.getAddress());
            preparedStatement.setInt(5,student.getClassId());
            preparedStatement.executeUpdate();
        }catch (SQLException e){
            System.out.println(e.getMessage());
        }

    }

    @Override
    public Student findById(int id) {
        String sql = "select s.id, s.name, s.email, s.birthday, s.address,s.classId  as classId\n" +
                "from student s\n" +
                "         join classroom c on c.id = s.classId\n" +
                "where s.id = ? and s.deleteflag = 0;";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
                id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                LocalDate birthday = resultSet.getDate("birthday").toLocalDate();
                String address = resultSet.getString("address");
               int classId = resultSet.getInt("classId");
//                String className = resultSet.getString("className");
              return new Student(id, name, email, birthday, address, classId);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Student> findAll() {
        List<Student> list = new ArrayList<>();
        String sql = "select s.id, s.name, s.email, s.birthday, s.address,c.id, c.name as className\n" +
                "from student s\n" +
                "         join classroom c on c.id = s.classId\n" +
                "where s.deleteflag = 0";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                LocalDate birthday = resultSet.getDate("birthday").toLocalDate();
                String address = resultSet.getString("address");
//                int classId = resultSet.getInt("classId");
                String className = resultSet.getString("className");
                Student student = new Student(id,name,email,birthday,address,className);
                list.add(student);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return list;
    }

    @Override
    public void edit(int id, Student student) {
        String sql = "update student set name = ? , email = ? ,birthday = ? , address = ?, classId = ? where  id = ?;";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,student.getName());
            preparedStatement.setString(2,student.getEmail());
            preparedStatement.setDate(3, Date.valueOf(student.getBirthday()));
            preparedStatement.setString(4,student.getAddress());
            preparedStatement.setInt(5,student.getClassId());
            preparedStatement.setInt(6,id);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public void remove(int id) {
        String sql = "update  student set deleteflag = 1 where id = ?;";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public List<Student> findByName(String nameOut) {
        List<Student> list = new ArrayList<>();
        String sql = "select s.id, s.name, s.email, s.birthday, s.address,c.name as className\n" +
                "from student s\n" +
                "         join classroom c on c.id = s.classId\n" +
                "where s.name like ? and s.deleteflag = 0;";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,'%' +nameOut+ '%');
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                LocalDate birthday = resultSet.getDate("birthday").toLocalDate();
                String address = resultSet.getString("address");
//                int classId = resultSet.getInt("classId");
                String className = resultSet.getString("className");
                Student student = new Student(id,name,email,birthday,address,className);
                list.add(student);

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


        return list;
    }


}
