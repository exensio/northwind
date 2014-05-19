package com.exensio.northwind

class Orders {

	Date orderdate
	Date requireddate
	Date shippeddate
	BigDecimal freight
	String shipname
    String shipaddress
    String shipcity
    String shipregion
    String shippostalcode
    String shipcountry
	Employees employees
	Customers customers
	Shippers shippers

	static hasMany = [orderdetails: Orderdetails]
	static belongsTo = [Customers, Employees, Shippers]

	static mapping = {
		id column: "OrderID", generator: "assigned"
        customers column: 'CustomerID';
        employees column: 'EmployeeID';
        shippers column: 'ShipVia';
		version false
	}

	static constraints = {
		orderdate nullable: true
		requireddate nullable: true
		shippeddate nullable: true
		freight nullable: true, scale: 4
		shipname nullable: true
		shipaddress nullable: true
		shipcity nullable: true
		shipregion nullable: true
		shippostalcode nullable: true
		shipcountry nullable: true
	}

    public String toString() {
        return "${orderdate} ${shipname} ${shipaddress} ${shippostalcode} ${shipcity}"
    }
}
