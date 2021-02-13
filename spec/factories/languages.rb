FactoryBot.define do
  factory :language do
    code { FFaker::Locale.code }
    name { FFaker::Locale.language }
  end
end
