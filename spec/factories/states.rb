FactoryBot.define do
  factory :state do
    code { FFaker::Code.ean }
    name { FFaker::Name.name }
    country
  end
end
