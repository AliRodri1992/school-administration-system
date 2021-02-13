FactoryBot.define do
  factory :university do
    name { FFaker::Education.school }
    motto { "MyString" }
  end
end
