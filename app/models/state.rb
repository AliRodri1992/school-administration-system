class State < ApplicationRecord
  belongs_to :country, inverse_of: :states

  validates :name, presence: true, uniqueness: true
end
