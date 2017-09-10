FactoryGirl.define do
  factory :user do
    token         { Faker::Internet.password(16, 16, true, true) }
  end
end
