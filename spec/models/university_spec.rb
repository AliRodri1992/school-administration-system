require 'rails_helper'

RSpec.describe University, type: :model do
  before(:all) do
    @university1 = create(:university)
  end

  it 'is valid with valid attributes' do
    expect(@university1).to be_valid
  end

  it 'is not valid without a name' do
    university2 = build(:university, name: nil)
    expect(university2).to_not be_valid
  end

  it "has a unique name" do
    university2 = create(:university, name: "Example")
    university3 = build(:university, name: 'Example')
    expect(university3).to_not be_valid
  end
end
