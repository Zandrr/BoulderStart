FactoryGirl.define do
  factory :user do
    name "John"
    email "john@example.com"
    password "password"
    password_confirmation "password"
    orgtype "candidate"
  end

  factory :user_startup, :parent => :user do
    orgtype "company"
  end

  factory :user_tech, :parent => :user do
    email "john_tech@example.com"
    discipline "Technical"
  end

  factory :user_nontech, :parent => :user do
    email "john_nontech@example.com"
    discipline "Non-Technical"
  end

end