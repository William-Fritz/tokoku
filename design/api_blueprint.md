# StoreFront API Blueprint

## GET /products{?keyword,filter,limit,offset}
+ Requests
  + Authentication
    + bearer.token
  + Parameters
    + keyword: 'Beras' (string, optional) - Search keyword
    + sort: 'Most Expensive' (string, optional) - Sort parameter
    + limit: 50 (number, optional) - Number of products per page
    + offset: 51 (number, optional) - Starting number of product on a page
+ Response
  + data
    + array[products]
  + meta
    + http_status: 200 (number, required) - status code
    + limit: 50 (number, required)
    + offset: 51 (number, required)

## POST /products
+ Requests
  + Authentication
    + bearer.token
  + Body
    + product_name (string, required) - Product name
    + price (number, required) - Product price
    + stock_amount (number, required) - Available stock
+ Response
  + message: 'Added'
  + meta
    + http_status: 201 (number, required) - status code

## GET /transaction{?keyword,filter,limit,offset}
+ Requests
  + Authentication
    + bearer.token
  + Body
    + keyword: 'Today' (string, optional) - Search keyword
    + sort: 'Newest First' (string, optional) - Sort parameter
    + limit: 50 (number, optional) - Number of transactions per page
    + offset: 51 (number, optional) - Starting number of product on a page
    
## POST /transaction
+ Requests
  + Authentication
    + bearer.token
  + Body
    + product_id (number, autofilled)  - Product ID
    + product_name (string, required) - Product name
    + quantity (number, required) - Quantity Sold
    + price (number, auto generated) - Product Price
+ Response
  + message: 'Transaction Done'
  + meta
    + http_status: 201 (number, required) - status code
    
## PATCH /product/{id}
+ Requests
  + Authentication
    + bearer.token
  + Body
    + stock_amount: 13 (number, required)
+ Response
  + message: 'OK'
  + meta
    + http_status: 201 (number, required) - status code
