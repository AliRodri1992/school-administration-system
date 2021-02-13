require 'rails_helper'

RSpec.describe Campus, type: :model do
  before(:all) do
    @campus1 = create(:campus)
  end

  describe 'Associations' do
    it { should belong_to(:university) }
  end

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(@campus1).to be_valid
    end

    it 'is not valid without a name' do
      campus2 = build(:campus, name: nil)
      expect(campus2).to_not be_valid
    end

    it 'has a unique name' do
      create(:campus, name: 'Example')
      campus3 = build(:campus, name: 'Example')
      expect(campus3).to_not be_valid
    end
  end
end
