FactoryBot.define do
  factory :campus do
    code { FFaker::Code.ean }
    name { FFaker::Education.school_generic_name }
    university
  end
end
