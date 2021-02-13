FactoryBot.define do
  factory :country do
    code { FFaker::Code.ean }
    name { 'Mexico' }
  end
end
