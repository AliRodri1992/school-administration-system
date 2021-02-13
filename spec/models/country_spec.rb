require 'rails_helper'

RSpec.describe Country, type: :model do
  before(:all) do
    @country1 = create(:country)
  end

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(@country1).to be_valid
    end

    it 'is not valid without a name' do
      country2 = build(:country, name: nil)
      expect(country2).to_not be_valid
    end

    it 'has a unique name' do
      create(:country, name: 'Example')
      country3 = build(:country, name: 'Example')
      expect(country3).to_not be_valid
    end
  end
end
