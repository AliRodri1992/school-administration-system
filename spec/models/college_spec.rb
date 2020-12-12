require 'rails_helper'

RSpec.describe College, type: :model do
  before(:all) do
    @college = create(:college)
  end

  it "is valid with valid attributes" do
    expect(@college).to be_valid
  end
end
