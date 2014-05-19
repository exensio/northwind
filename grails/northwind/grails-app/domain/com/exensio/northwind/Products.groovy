package com.exensio.northwind

class Products {

    String productname
    String quantityperunit
    BigDecimal unitprice
    Short unitsinstock
    Short unitsonorder
    Short reorderlevel
    Boolean discontinued
    Categories categories
    Suppliers suppliers

    static belongsTo = [Categories, Suppliers, Orderdetails]

    static mapping = {
        id column: "ProductID", generator: "assigned"
        categories column: 'CategoryID';
        suppliers column: 'SupplierID';
        version false
    }

    static constraints = {
        quantityperunit nullable: true
        unitprice nullable: true, scale: 4
        unitsinstock nullable: true
        unitsonorder nullable: true
        reorderlevel nullable: true
        discontinued nullable: true
    }

    public String toString() {
        return "${productname} ${unitprice}"
    }
}
