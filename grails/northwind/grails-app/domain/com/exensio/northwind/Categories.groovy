package com.exensio.northwind

class Categories {

    String categoryname
    String description
    byte[] picture

    static hasMany = [productses: Products]

    static mapping = {
        id column: "CategoryID", generator: "assigned"
        version false
    }

    static constraints = {
        categoryname unique: true
        description nullable: true
        picture nullable: true
    }

    public String toString() {
        return "${categoryname} ${description}"
    }
}
