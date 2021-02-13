class Country < ApplicationRecord
  has_many :states, inverse_of: :country

  validates :name, presence: true, uniqueness: true
end
