* ### <a href="https://ghood97.github.io/inventory_manager_client/">Deployed Client Application</a>
* ### <a href="https://afternoon-sierra-41113.herokuapp.com/">Deployed API</a>
* ### <a href="https://github.com/ghood97/inventory_manager_client">Client repository</a>

<h3>Technologies Used</h3>
<ul>
  <li>Ruby</li>
  <li>Rails</li>
  <li>Heroku</li>
</ul>

<h3>Planning</h3>

I began this project by building the first resource: products in Ruby on Rails. Then I assigned ownership of products to User. After testing all of the routes for products, I removed the User ownership and created a join-table: inventories. User *has_many* inventories, Product *has_many* inventories, and inventories *belongs_to* both User and Product. My main goal for this project was to work slowly and methodically to keep all of my resources in the state that they were expected. I used rails to generate new resources and migrate changes to the database. My main strategizing was done during the process of creating the join-table. I was careful to make sure that the relationships between the resources were exactly what I was trying to display through the client.


<h3>Future Versions</h3>

As I havent run into any unsolved problems, I would like to create further authenication for admin users. As of now, the products table cannot be altered. I would like certain users (database administrators) of a company to be able to add or remove products.


## ERD Diagrams

#### Version 1

![erd1](https://media.git.generalassemb.ly/user/23015/files/6971cd00-f026-11e9-8062-2135cc5743a8)

#### Version 2

![erd2](https://media.git.generalassemb.ly/user/23015/files/742c6200-f026-11e9-969a-1b55f42db543)
