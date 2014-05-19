package com.exensio.northwind

class Shippers {

    String companyname
    String phone

    static hasMany = [orderses: Orders]

    static mapping = {
        id column: "ShipperID", generator: "assigned"
        version false
    }

    static constraints = {
        phone nullable: true
    }

    public String toString() {
        return "${companyname}"
    }
}
