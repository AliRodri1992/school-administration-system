FactoryBot.define do
  factory :college do
    key { FFaker::Code.name }
    name { FFaker::Name.first_name }
    turn { "MyString" }
    public { true }
  end
end
