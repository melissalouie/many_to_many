s#### Modeling Practice

bundle

rake db:create db:migrate db:seed

Data model: Look at Schema

No need to create migrations or alter the schema.

###### Stories

- The last dev team left this app mid build. It is a review website for products and companies.

- Don't worry about Edit pages.

- The Authentication/Session controller is very basic with no password for authentication. Don't worry about this. It is there to add the current_user's ID to the review they are writing.

- We are missing some stuff for Companies and Products. There are Index pages but that is it. Add Show Pages for Companies and Products that link from their name in the index page in their respective table. Add the ability to create Companies and Products.

- A Product belongs to a Company but the resources are not nested. On the new product page the client wants a collection select of all of the companies in our database. There is a link to a new product page but it is missing the collection select and the 'products#create' action is empty.

- A CompanyReview is a join between a user and a company. Also has a title, a rating and a description. This is finished .

- A ProductReview is a join between a user and a product. Also has a title, a rating and a description. This is incomplete, it is missing routes, a controller, a view folder and views.

- There is a Reviews Index page that has tables of all of the ProductReviews and CompanyReviews. We need to add the User who wrote the review to the table.

- The last devs didn't add any associations to our models. We need to add them. Companies have products. Look at the Schema and try to decide what belongs to what.

- The last devs wrote no Validations. We need to add Validations on Product, ProductReview and CompanyReview:

-  Product MUST have a company_id.

-  ProductReview MUST have  title, description, product_id, user_id and a rating.

-  CompanyReview MUST have title, description, company_id,  user_id and   rating.
