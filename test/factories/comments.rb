FactoryGirl.define do 
	factory :comment do
		message "ICK"
		rating "1_star"
		association :place
		association :user
	end
end