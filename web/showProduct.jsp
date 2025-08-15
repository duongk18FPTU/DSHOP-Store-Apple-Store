<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Product Detail</title>
        <style>
            body {
                font-family: Arial, sans-serif;
            }
            .container {
                display: flex;
                justify-content: center;
            }
            .product {
                max-width: 450px;
                border: 1px solid #ddd;
                padding: 20px;
                border-radius: 8px;
            }
            .product img {
                max-width: 100%;
                height: auto;
                border-radius: 8px;
            }
            .product-info {
                margin-top: 20px;
            }
            .product-info h1 {
                font-size: 24px;
                margin: 0;
            }
            .product-info p {
                margin: 5px 0;
            }
            .product-info .price {
                font-size: 20px;
                color: #b12704;
                font-weight: bold;
            }
            .buy {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
            }
            .button {
                background-color: #F7941D;
                border: none;
                padding: 10px 15px;
                border-radius: 20px;
                color: white;
                font-weight: bold;
                font-size: 1rem;
            }
            
            #quantity {
                padding: 10px 15px;
                border-radius: 20px;
                font-weight: bold;
                font-size: 1rem;
                width: 250px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="product">
                <img src="${product.image_url}" alt="${product.name}">
                <div class="product-info">
                    <h1>${product.name}</h1>
                    <p><strong>release Date:</strong> ${product.release_date}</p>
                    <p class="price">${product.price} $</p>
                    <p><strong>Describe:</strong> ${product.description}</p>
                </div>
            </div>

            <div class="product buy">
                <form action="cart" id="add-cart">
                    <input type="hidden" name="service" value="addToCart" />
                    <input type="hidden" name="productId" value="${product.id}" />
                    <input type="number" name="quantity" id="quantity" placeholder="Quantity you want to buy..."/>

                    <input class="button" type="submit" value="Add to cart" />
                </form>
            </div>
        </div>

    </body>
</html>
