FactoryGirl.define do
  factory :song do
    name    { Faker::Lorem.word }
    artist nil
  end
end
