class HomeLoan < ActiveRecord::Base
	jsonb_accessor :data, 
		loan_type:             :string,
		loan_purpose:          :string,
		loan_amount:           :integer,
		interest_rate:         :decimal,
		property_market_value: :integer,
		rate_type:             :string,
		retention:             :boolean,
		preference:            {
									big_four_banks:       :string,
									online_banks:         :string,
									flexible:             :boolean,
									interest_only_period: :integer,
									is_restrict:          :boolean
								}
end
