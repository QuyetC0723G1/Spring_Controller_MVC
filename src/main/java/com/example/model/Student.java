package com.example.model;

import java.time.LocalDate;

public class Student {
    private int id;
    private String name;
    private String email;
    private LocalDate birthday;
    private String address;
    private int classId;
    private String className;

    public Student(int id, String name, String email, LocalDate birthday, String address, int classId) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.birthday = birthday;
        this.address = address;
        this.classId = classId;
    }

    public Student(String name, String email, LocalDate birthday, String address, int classId) {
        this.name = name;
        this.email = email;
        this.birthday = birthday;
        this.address = address;
        this.classId = classId;
    }

    public Student(int id, String name, String email, LocalDate birthday, String address, String className) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.birthday = birthday;
        this.address = address;
        this.className = className;
    }

    public Student() {
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public LocalDate getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = LocalDate.parse(birthday);
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getClassId() {
        return classId;
    }

    public void setClassId(int classId) {
        this.classId = classId;
    }
}
