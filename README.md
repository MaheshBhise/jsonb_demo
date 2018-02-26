# Jsonb implementation

## README

* Ruby version: 2.3.1

* Setup
  * rake db:create db:migrate db:seed


* Run Project instructions
  * Development: rails s
  * navigate to http://localhost:3000/home_loans 
    or
  * http://localhost:3000/home_loans.json

* Example query on jsonb data column with nesting
   * HomeLoan.data_contains(rate_type: "fixed", preference: { flexible: true })
