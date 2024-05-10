FactoryBot.define do
  factory :todo do
    content { Faker::Lorem.sentence }
    uuid { Faker::Internet.uuid }
  end
end
