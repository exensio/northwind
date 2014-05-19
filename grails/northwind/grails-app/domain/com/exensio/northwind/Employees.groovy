package com.exensio.northwind

class Employees {

    String lastname
    String firstname
    String title
    String titleofcourtesy
    Date birthdate
    Date hiredate
    String address
    String city
    String region
    String postalcode
    String country
    String homephone
    String extension
    String photo
    String notes
    Integer reportsto

    static hasMany = [orderses: Orders]

    static mapping = {
        id column: "EmployeeID", generator: "assigned"
        version false
    }

    static constraints = {
        title nullable: true
        titleofcourtesy nullable: true
        birthdate nullable: true
        hiredate nullable: true
        address nullable: true
        city nullable: true
        region nullable: true
        postalcode nullable: true
        country nullable: true
        homephone nullable: true
        extension nullable: true
        photo nullable: true
        notes nullable: true
        reportsto nullable: true
    }

    public String toString() {
        return "${firstname} ${lastname}"
    }
}
