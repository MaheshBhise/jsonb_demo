json.extract! home_loan, 	:id, 
							:data, 
							:loan_type,
							:loan_purpose,
							:loan_amount,
							:interest_rate,
							:property_market_value,
							:rate_type,
							:retention,
							:created_at, 
							:updated_at

json.extract! home_loan.preference,	:big_four_banks,     
									:online_banks,       
									:flexible,            
									:interest_only_period,
									:flexible,
									:is_restrict

json.url home_loan_url(home_loan, format: :json)
