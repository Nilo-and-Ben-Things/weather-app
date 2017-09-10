FactoryGirl.define do
  factory :location do
    name          { "Faker::Address.city, Faker::Address.state_abbr" }
    query         { Faker::Lorem.characters(20) }
    user
  end
end