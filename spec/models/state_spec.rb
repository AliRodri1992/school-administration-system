require 'rails_helper'

RSpec.describe State, type: :model do
  before(:all) do
    @state1 = create(:state)
  end

  describe 'Associations' do
    it { should belong_to(:country) }
  end

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(@state1).to be_valid
    end

    it 'is not valid without a name' do
      state2 = build(:state, name: nil)
      expect(state2).to_not be_valid
    end
  end
end
