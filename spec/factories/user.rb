FactoryGirl.define do
  factory :user do
    name "John"
    email "john@example.com"
    password "passoword"
    password_confirmation "password"
  end

end