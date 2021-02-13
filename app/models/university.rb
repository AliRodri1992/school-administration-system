class University < ApplicationRecord
  has_many :campus, inverse_of: :university

  validates :name, presence: true, uniqueness: true
end
