package com.exensio.northwind

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class Orderdetails implements Serializable {

    BigDecimal unitprice
    Short quantity
    Float discount
    //Products product
    Orders order

    /*
    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.isEquals()
    }
    */
    static belongsTo = [Orders]
    static hasOne = [product: Products]

    static mapping = {
        id composite: ["product", "order"]
        order column: 'OrderID';
        product column: 'ProductID';
        version false
    }

    static constraints = {
        unitprice scale: 4
    }

    public String toString() {
        return "${product.productname} ${product.unitprice}"
    }
}
