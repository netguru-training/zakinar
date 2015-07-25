FactoryGirl.define do
  factory :user do
    first_name "Test User"
    last_name "Last_name"
    email "test@example.com"
    password "please123"

    trait :admin do
      role 'admin'
    end

  end
end
