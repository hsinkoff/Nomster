FactoryGirl.define do
	factory :place do
		name "taco"
		address "123 state"
		description "great"
		latitude(0.0)
		longitude(0.0)
		association :user
	end
end