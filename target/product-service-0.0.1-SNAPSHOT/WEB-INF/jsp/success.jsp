<%@page import="com.cjc.store.model.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product List</title>
    <style>
    /* General Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Arial', sans-serif;
    background-color: #4b0082; /* Purple background */
    color: white;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    margin: 0;
}

.container {
    width: 90%;
    max-width: 1200px;
    margin: auto;
    text-align: center;
}

h1 {
    font-size: 2.5rem;
    margin-bottom: 1.5rem;
}

.add-product-container {
    margin-bottom: 1.5rem;
    text-align: right;
}

.add-product-btn {
    padding: 0.8rem 1.5rem;
    background-color: #8a2be2; /* Purple button */
    border: none;
    border-radius: 5px;
    color: white;
    font-size: 1rem;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.add-product-btn:hover {
    background-color: #6a1db4; /* Darker purple on hover */
}

.product-table {
    width: 100%;
    border-collapse: collapse;
    background-color: #5c2d91; /* Purple table background */
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
    border-radius: 8px;
    overflow: hidden;
}

.product-table th,
.product-table td {
    padding: 1rem;
    text-align: left;
    border-bottom: 1px solid #ddd;
    color: #f9f9f9;
}

.product-table th {
    background-color: #7b47b7; /* Darker purple for headers */
    font-size: 1.1rem;
    text-transform: uppercase;
    letter-spacing: 0.05rem;
}

.product-table tbody tr:nth-child(even) {
    background-color: #4b0082; /* Slightly darker for even rows */
}

.product-table tbody tr:hover {
    background-color: #6a1db4; /* Hover effect for rows */
}

.product-table td {
    font-size: 1rem;
}
    
    </style>
</head>
<body>
  <%List<Product> productList = (List<Product>) request.getAttribute("data");%>
    <div class="container">
        <h1>Product List</h1>

                <div class="add-product-container">
                <a href="/" >
            	<input type="button" value="Logout" class="add-product-btn">
            	</a>
        	   </div>
                     <br><br>
                <div class="add-product-container">
                <a href="/productRegPage" >
            	<input type="button" value="Add New Prdouct" class="add-product-btn">
            	</a>
        	   </div>
        <table class="product-table">
            <thead>
                <tr>
                    <th>Product ID</th>
                    <th>Product Name</th>
                    <th>Duration</th>
                    <th>Price</th>
                    <th>Seats Available</th>
                </tr>
            </thead>
            <tbody>
                 <%for(Product product:productList) {%>
                   <tr>
                    <td><%=product.getPid()%></td>
                    <td><%=product.getPname()%></td>
                    <td><%=product.getDuration()%></td>
                    <td><%=product.getPrice()%></td>
                    <td><%=product.getSeats()%></td>
                </tr>
                 <%} %>
                
                <!-- Add more rows as needed -->
            </tbody>
        </table>
    </div>
</body>
</html>
