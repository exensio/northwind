package com.exensio.northwind

class Customers {

	String customerid
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

	static hasMany = [orderses: Orders]

	static mapping = {
		id name: "customerid", generator: "assigned", column: 'CustomerID'
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
	}

    public String toString() {
        return "${customerid} ${companyname} ${contactname} ${postalcode} ${city}"
    }
}
