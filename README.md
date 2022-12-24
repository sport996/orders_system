# README

Steps Followed:

- Verify created tables and foreign keys and add missing
An entity can have (one or many) other entity

Shop one to many Item √
Create foreign key in item for shop

Shop one to many Order √
Create foreign key in order for shop

Shop one to many invoice √
Create foreign key in invoice for shop

Invoice one to many order √
Create foreign key in order for invoice

Item many to many Order √
Create table Items_Orders(containing foreign keys and quantity)

- research device and jet and create users table auth √
https://www.thespian.hr/blog/devise-authentication-for-the-rails-7-api-application

- Look into user relations if there was recurring with shop √

devise_jwt_secret:
ef6413fb139654e243cd2813946015086c529586f1f298f2219eb2a1bfb60ae868fd968cce3bc388a2ed52accfcb2297f26fa1d0da26372c7da44a1c29192937

Shop one to many User (Cashier) √
Create foreign key in user for shop

User (Shop owner) one to many Shop √
Create foreign key in shop for user
- Create empty migration
add_reference(:shops, :shop_owner, foreign_key: { to_table: :users })

User (Cashier) one to many  orders√
Create foreign key in order for user
- Create empty migration
add_reference(:orders, :cashier, foreign_key: { to_table: :users })

- Add association in rails models √

- Insert an admin user 

- Coding the endpoints as mentioned in System Flow. 

- Use Rest Client for API calls
https://betterprogramming.pub/making-api-calls-in-your-rails-app-try-these-http-clients-47b90ebca70

- Crono job rails gem
https://github.com/plashchynski/crono/blob/main/README.md
