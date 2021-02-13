require 'rails_helper'

RSpec.describe Language, type: :model do
  before(:all) do
    @language1 = create(:language)
  end

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(@language1).to be_valid
    end

    it 'is not valid without a name' do
      language2 = build(:language, name: nil)
      expect(language2).to_not be_valid
    end

    it 'has a unique name' do
      create(:language, name: 'Example')
      language3 = build(:language, name: 'Example')
      expect(language3).to_not be_valid
    end
  end
end
