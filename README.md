# Jsonb implementation

## README

* Ruby version: 2.3.1

* Setup
  * change the config/database.yml file as per your database settings.
  * rake db:create db:migrate db:seed


* Run Project instructions
  * Development: rails s
  * navigate to http://localhost:3000/home_loans 
    or
  * http://localhost:3000/home_loans.json

* Example query on jsonb data column with nesting
   * On terminal hit `rails console` and play with seeded data 
    * HomeLoan.data_contains(rate_type: "fixed", preference: { flexible: true })
