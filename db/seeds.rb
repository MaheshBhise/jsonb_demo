# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do 
	home_loan = HomeLoan.new()

	home_loan.loan_type = ['new loan', 'refinance'].sample
	home_loan.loan_purpose = [].sample
	home_loan.loan_amount = 400000
	home_loan.interest_rate = 12
	home_loan.property_market_value = 1500000
	home_loan.rate_type = ['fixed', 'variable'].sample
	home_loan.retention = [true, false].sample
	home_loan.preference.big_four_banks = ['yes', 'optional', 'no'].sample
	home_loan.preference.online_banks = ['yes', 'optional', 'no'].sample
	home_loan.preference.flexible = [true, false].sample
	home_loan.preference.interest_only_period = Faker::Number.between(1,10)
	home_loan.preference.is_restrict = [true, false].sample
	home_loan.save!
end