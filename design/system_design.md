# Storefront
Author(s): William-Fritz 
Reviewer(s): Whirlpool27

## Context
This Project purpose is to build a web application for stores to simplify their Point of Sales, Inventory Management, and Financial Report all in one web app.

## Milestones
- **Start Date** : 
- **Milestone 6 - Beautification for the website**: TBA

## Storefront Key Features
1. **Simple Point of Sales**
  - This feature lets user track their sales through manual input of simple sales form. The form consists of Product Name, Quantity, Amount, and Customer Name. It will also lets the user to add more product through a click of a button if the customer buys many different products.
2. **Automated Inventory Management**
  - Inventory management is sometimes tough to deal with manually, this feature will automatically decrease or increase the amount of product stock in the inventory if transaction either sell or buy occurs.
3. **Daily Revenue Report**
  - This feature will automatically feed a thorough report of all the transaction that happens today through a click of a button which tells the user the amount of revenue the store makes today.
4. **Audit Store**
  - This features will let the user check the accuracy of the stock between the database and the physical inventory through time based stock and transaction report so the user can confirm the amount of stock available to the real physical inventory of the store.

## System Dependencies
Based on the key features of Storefront webapp, we certainly need a database to store all of the information and process certain data to then serve to the user. Specifically for feature number 2 and 3 we will need some kind of Background Job and Cron Job to run and process the request made either automatically or on certain conditions. This Storefront webapp is fairly simple and all in all we just need a:
1. Database system, 
2. Background job, and
3. Cron job

## Database Schema
Further Database design is needed to figure out what database system we will be using, based on the key features the database schema will look like this:

![database schema](database%20schema.jpg)


After we're done with the database schema we need to define the operation that we will heavily use so then we can choose based on the trade off which database we want to use from MongoDB as NoSql or MySql.

+ Read/Write/Listing Operation Table

.. | Read | Write | Listing | DB Choice
-- | ---- | ----- | ------- | ---------
Feature #1 | Yes | Yes | Yes | MySql
Feature #2 | Yes | Yes | Yes | MySql
Feature #3 | Yes | No | Yes | MySql
Feature #4 | Yes | No | Yes | MySql

## System Architecture
Based on all the design above, our concluded System Architecture will look like this:

![System Architecture](System%20Architecture.jpg)
