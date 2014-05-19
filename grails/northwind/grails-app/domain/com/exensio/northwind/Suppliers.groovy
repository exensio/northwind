package com.exensio.northwind

class Suppliers {

    String companyname
    String contactname
    String contacttitle
    String address
    String city
    String region
    String postalcode
    String country
    String phone
    String fax
    String homepage

    static hasMany = [productses: Products]

    static mapping = {
        id column: "SupplierID", generator: "assigned"
        version false
    }

    static constraints = {
        contactname nullable: true
        contacttitle nullable: true
        address nullable: true
        city nullable: true
        region nullable: true
        postalcode nullable: true
        country nullable: true
        phone nullable: true
        fax nullable: true
        homepage nullable: true
    }

    public String toString() {
        return "${companyname} ${contactname} ${city} ${country}"
    }
}
