require 'rails_helper'

RSpec.describe Campus, type: :model do
  before(:all) do
    @campus1 = create(:campus)
  end

  it 'is valid with valid attributes' do
    expect(@campus1).to be_valid
  end

  it 'is not valid without a name' do
    campus2 = build(:campus, name: nil)
    expect(campus2).to_not be_valid
  end

  it "has a unique name" do
    campus2 = create(:campus, name: "Example")
    campus3 = build(:campus, name: 'Example')
    expect(campus3).to_not be_valid
  end
end
